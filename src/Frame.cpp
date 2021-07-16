#include "Frame.h"
#include "MapPoint.h"
namespace myslam{

Frame::Frame(unsigned long id, double timeStamp, SE3 pose, cv::Mat leftImg, cv::Mat rightImg):
    id_(id), timeStamp_(timeStamp), pose_(pose), leftImg_(leftImg), rightImg_(rightImg) {}

void Frame::SetPose(SE3 pose){
    std::unique_lock<std::mutex> lock(poseMutex_);
    pose_ = pose;
}

SE3 Frame::GetPose(){
    std::unique_lock<std::mutex> lock(poseMutex_);
    return pose_;
}

std::vector<cv::DMatch> Frame::GetMatch(){
	std::unique_lock<std::mutex> lock(pointMutex_);
    return goodMatch_;
}
std::vector<cv::KeyPoint> Frame::GetLeftKpts(){
	std::unique_lock<std::mutex> lock(pointMutex_);
    return leftKeypoint_;
}
std::vector<cv::KeyPoint> Frame::GetRightKpts(){
	std::unique_lock<std::mutex> lock(pointMutex_);
    return rightKeypoint_;
}

void Frame::SetKeyframe(){
    isKeyframe_ = true;
}

void Frame::DetectFeature(){
    cv::Ptr<cv::ORB> detector = cv::ORB::create();
	//檢測並計算成描述子
	detector->detectAndCompute(leftImg_, cv::Mat(), leftKeypoint_, leftDescriptor_);
	detector->detectAndCompute(rightImg_, cv::Mat(), rightKeypoint_, rightDescriptor_);
	leftMapPoint_.resize(leftKeypoint_.size());
}

void Frame::MatchFeature(){
    cv::FlannBasedMatcher fbmatcher(new cv::flann::LshIndexParams(20, 10, 2));
	std::vector<cv::DMatch> matches;
    //將找到的描述子進行匹配並存入matches中
	fbmatcher.match(leftDescriptor_, rightDescriptor_, matches);

    double minDist = 1000;
	double maxDist = 0;
	//找出最優描述子
	for (int i = 0; i < leftDescriptor_.rows; i++)
	{
		double dist = matches[i].distance;
		if (dist < minDist)
		{
			minDist=dist ;
		}
		if (dist > maxDist)
		{
			maxDist=dist;
		}

	}
    //std::cout << 5 * minDist << std::endl;

	for (int i = 0; i < leftDescriptor_.rows; i++)
	{
		double dist = matches[i].distance;
		if (dist < std::max(5 * minDist, 30.0))
		{
			goodMatch_.push_back(matches[i]);
		}
	}
    //std::cout << " points: " << goodMatch_.size() << std::endl;
	/*cv::Mat orbImg;
	drawMatches(leftImg_, leftKeypoint_, rightImg_, rightKeypoint_, goodMatch_, orbImg,
		cv::Scalar::all(-1), cv::Scalar::all(-1), std::vector<char>(), cv::DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS);
    cv::imshow("ORB_demo", orbImg);
    cv::waitKey(0);*/
}

int Frame::DetectOutlier(){
	std::vector<cv::Point2f> kps1, kps2;
	for(int i = 0, iend = goodMatch_.size(); i < iend; ++i){
		kps1.push_back(leftKeypoint_[goodMatch_[i].queryIdx].pt);
		kps2.push_back(rightKeypoint_[goodMatch_[i].trainIdx].pt);
	}

	std::vector<uchar> inlier;
	cv::findFundamentalMat(kps1, kps2, cv::FM_RANSAC, 3, 0.99, inlier_);
	
	int numOfInlier = 0;
	std::vector<cv::DMatch> newMatches;
	for(int i = 0; i < goodMatch_.size(); ++i){
		if(inlier_[i]){
			newMatches.push_back(goodMatch_[i]);
			numOfInlier++;
		}
	}
	numOfInlier_ = numOfInlier;
	goodMatch_ = newMatches;
	/*cv::Mat orbImg;
	drawMatches(leftImg_, leftKeypoint_, rightImg_, rightKeypoint_, goodMatch_, orbImg,
		cv::Scalar::all(-1), cv::Scalar::all(-1), std::vector<char>(), cv::DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS);
    cv::imshow("ORB_demo", orbImg);
	cv::waitKey(0);*/

	return numOfInlier;
}

}