#include <opencv2/core/core.hpp>
#include <opencv2/opencv.hpp>
#include <iostream>
using namespace std;
using namespace cv;
int main(int, char**){
    cv::Mat img1 = cv::imread("left.png");
    cv::Mat img2 = cv::imread("right.png");

    if (!img1.data|| !img2.data){
		cout << "圖片未找到！" << endl;
		return -1;
	}

    double t1 = getTickCount();
    Ptr<ORB> detector = ORB::create(400);
	vector<KeyPoint> keypoints_obj;
	vector<KeyPoint> keypoints_scene;
	//定義描述子
	Mat descriptor_obj, descriptor_scene;
	//檢測並計算成描述子
	detector->detectAndCompute(img1, Mat(), keypoints_obj, descriptor_obj);
	detector->detectAndCompute(img2, Mat(), keypoints_scene, descriptor_scene);
    cout << keypoints_obj.size() << " " << descriptor_obj.size()<< "Helo" << endl;
	double t2 = getTickCount();
	double t = (t2 - t1) * 1000 / getTickFrequency();
	//特徵匹配
	FlannBasedMatcher fbmatcher(new flann::LshIndexParams(20, 10, 2));
	vector<DMatch> matches;
	//將找到的描述子進行匹配並存入matches中
	fbmatcher.match(descriptor_obj, descriptor_scene, matches);

    double minDist = 1000;
	double maxDist = 0;
	//找出最優描述子
	vector<DMatch> goodmatches;
	for (int i = 0; i < descriptor_obj.rows; i++)
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
	for (int i = 0; i < descriptor_obj.rows; i++)
	{
		double dist = matches[i].distance;
		if (dist < max(5 * minDist, 0.02))
		{
			goodmatches.push_back(matches[i]);
		}
	}
	Mat orbImg;

	drawMatches(img1, keypoints_obj, img2, keypoints_scene, goodmatches, orbImg,
		Scalar::all(-1), Scalar::all(-1), vector<char>(), DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS);


	cout << "ORB執行時間為:" << t << "ms" << endl;
	cout << "最小距離為：" <<minDist<< endl;
	cout << "最大距離為：" << maxDist << endl;
	imshow("ORB_demo", orbImg);

    //cv::imshow("left", img1);
    //cv::imshow("right", img2);
    cv::waitKey(0);
}