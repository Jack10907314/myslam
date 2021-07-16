#include "FrontEnd.h"

namespace myslam{

bool FrontEnd::AddFrame(Frame::Ptr newFrame){
    if(!newFrame) return false;
    newFrame->DetectFeature();
    newFrame->MatchFeature();
    newFrame->DetectOutlier();
    currentFrame_ = newFrame;

    switch (status_){
        case FrontEndStatus::Initial:
            StereoInitial();
            break;
        case FrontEndStatus::Track:
            Track();
            break;
        case FrontEndStatus::Lost:
            std::cout << "VO lost tracking" << std::endl;
            return false;
    }
    
    if(lastFrame_)
        relativeMotion_ = currentFrame_->GetPose() * lastFrame_->GetPose().inverse();
    lastFrame_ = currentFrame_;
    return true;
}

bool FrontEnd::StereoInitial(){
    if(currentFrame_->GetInlierNum() < num_features_init_)
        return false;
    
    CreateNewMapPoint();

    status_ = FrontEndStatus::Track;
    viewer_->AddCurrentFrame(currentFrame_);
    viewer_->UpdateMap();
    currentFrame_->SetKeyframe();
    map_->AddKeyFrame(currentFrame_);
    //backend_->Update();
    
    std::cout << "Initial finished" << std::endl;
    return true;
}

void FrontEnd::Track(){
    int trackInliers = 0;

    trackInliers = TrackFromLastFrame();

    if(trackInliers > num_features_tracking_bad_)
        status_ = FrontEndStatus::Track;
    else
        status_ = FrontEndStatus::Lost;
    if(1){
    //if(trackInliers < num_features_needed_for_keyframe_){
        currentFrame_->SetKeyframe();
        map_->AddKeyFrame(currentFrame_);
        CreateNewMapPoint();
    }
    
    viewer_->AddCurrentFrame(currentFrame_);
    viewer_->UpdateMap();
}

// int FrontEnd::TrackFromLastFrame(){
//     cv::FlannBasedMatcher fbmatcher(new cv::flann::LshIndexParams(20, 10, 2));
// 	std::vector<cv::DMatch> matches;
//     //將找到的描述子進行匹配並存入matches中
// 	fbmatcher.match(currentFrame_->leftDescriptor_, lastFrame_->leftDescriptor_, matches);
    
//     double minDist = 1000;
// 	double maxDist = 0;
// 	//找出最優描述子
// 	for (int i = 0; i < currentFrame_->leftDescriptor_.rows; i++)
// 	{
// 		double dist = matches[i].distance;
// 		if (dist < minDist)
// 		{
// 			minDist=dist ;
// 		}
// 		if (dist > maxDist)
// 		{
// 			maxDist=dist;
// 		}

// 	}

//     std::vector<cv::DMatch> goodMatches;
// 	for (int i = 0; i < currentFrame_->leftDescriptor_.rows; i++)
// 	{
// 		double dist = matches[i].distance;
// 		if (dist < std::max(5 * minDist, 30.0))
// 		{
// 			goodMatches.push_back(matches[i]);
// 		}
// 	}

    
//     std::vector<cv::Point2f> kps1, kps2;
// 	for(int i = 0, iend = goodMatches.size(); i < iend; ++i){
//         //if(lastFrame_->leftMapPoint_[goodMatches[i].trainIdx]){
//             kps1.push_back(currentFrame_->leftKeypoint_[goodMatches[i].queryIdx].pt);
// 		    kps2.push_back(lastFrame_->leftKeypoint_[goodMatches[i].trainIdx].pt);
//         //}
// 	}
//     /*cv::Mat orbImg;
//     std::cout << "good size : " << goodMatches.size() << std::endl;
// 	drawMatches(currentFrame_->leftImg_, currentFrame_->leftKeypoint_, lastFrame_->leftImg_, lastFrame_->leftKeypoint_, goodMatches, orbImg,
// 		cv::Scalar::all(-1), cv::Scalar::all(-1), std::vector<char>(), cv::DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS);
//     cv::imshow("ORB_demo", orbImg);
// 	cv::waitKey(0);

//     std::cout << std::endl << std::endl << "No" << std::endl << std::endl;
//     std::cout << "size: " << kps1.size() << " " << kps2.size() << std::endl;*/
//     std::vector<uchar> inlier;
// 	cv::Mat essential = cv::findEssentialMat(kps2, kps1, cameraLeft_->fx_, cv::Point2d(cameraLeft_->cx_, cameraLeft_->cy_), cv::RANSAC, 0.999, 1.0, inlier);
//     cv::Mat R, t;
//     cv::recoverPose(essential, kps2, kps1, R, t, cameraLeft_->fx_, cv::Point2d(cameraLeft_->cx_, cameraLeft_->cy_));
//     int numInlier = 0;
//     for(size_t i = 0; i < goodMatches.size(); ++i){
//         if(inlier[i]){
//             if(lastFrame_->leftMapPoint_[goodMatches[i].trainIdx])
//                 numInlier++;
//             currentFrame_->leftMapPoint_[goodMatches[i].queryIdx] = lastFrame_->leftMapPoint_[goodMatches[i].trainIdx];
//         }
//     }
//     //std::cout << std::endl << R << std::endl;
//     //std::cout << std::endl << std::endl << "No" << std::endl << std::endl;
//     SE3 poseLastToNow = Convert::toSE3(R, t);
//     SE3 pose = poseLastToNow * lastFrame_->GetPose();
//     currentFrame_->SetPose(pose);

//     return numInlier;
// }

int FrontEnd::TrackFromLastFrame(){
    cv::FlannBasedMatcher fbmatcher(new cv::flann::LshIndexParams(20, 10, 2));
	std::vector<cv::DMatch> matches;
    //將找到的描述子進行匹配並存入matches中
	fbmatcher.match(currentFrame_->leftDescriptor_, lastFrame_->leftDescriptor_, matches);
    
    double minDist = 1000;
	double maxDist = 0;
	//找出最優描述子
	for (int i = 0; i < currentFrame_->leftDescriptor_.rows; i++)
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

    std::vector<cv::DMatch> goodMatches;
	for (int i = 0; i < currentFrame_->leftDescriptor_.rows; i++)
	{
		double dist = matches[i].distance;
		if (dist < std::max(10 * minDist, 100.0))
		{
			goodMatches.push_back(matches[i]);
		}
	}

    std::vector<cv::Point2f> kps1, kps2;
	for(int i = 0, iend = goodMatches.size(); i < iend; ++i){
		kps1.push_back(currentFrame_->leftKeypoint_[goodMatches[i].queryIdx].pt);
		kps2.push_back(lastFrame_->leftKeypoint_[goodMatches[i].trainIdx].pt);
	}

	std::vector<uchar> inlier1;
	cv::findFundamentalMat(kps1, kps2, cv::FM_RANSAC, 1, 0.99, inlier1);
	
	int numOfInlier = 0;
	std::vector<cv::DMatch> newMatches;
	for(int i = 0; i < goodMatches.size(); ++i){
		if(inlier1[i]){
			newMatches.push_back(goodMatches[i]);
			numOfInlier++;
		}
	}

    
    std::vector<cv::DMatch> match2D3D;
    std::vector<cv::Point2f> imagePoints;
    std::vector<cv::Point3f> mapPoints;
	for(int i = 0, iend = newMatches.size(); i < iend; ++i){
        if(lastFrame_->leftMapPoint_[newMatches[i].trainIdx]){
            imagePoints.push_back(currentFrame_->leftKeypoint_[newMatches[i].queryIdx].pt);
		    mapPoints.push_back(Convert::toPoint3f(lastFrame_->leftMapPoint_[newMatches[i].trainIdx]->GetPosition()));
            match2D3D.push_back(newMatches[i]);
        }
	}
    std::cout << "imagePoints size: " << imagePoints.size() << " mapPoints size: " << mapPoints.size() << std::endl;
    cv::Mat cameraMatrix = cameraLeft_->GetIntrinsic();
    cv::Mat distCoeffs = (cv::Mat_<double>(4,1) << 0,0,0,0);
    std::vector<uchar> inlier;
    SE3 estimatePose = relativeMotion_ * lastFrame_->GetPose();
    cv::Mat Rcw = Convert::Get_R(estimatePose);
    cv::Mat tcw = Convert::Get_t(estimatePose);
    cv::Mat Rvector;
    cv::Rodrigues(Rcw, Rvector);
    cv::solvePnPRansac(mapPoints, imagePoints, cameraMatrix, distCoeffs, Rvector, tcw, true, 100, 1.0, 0.99, inlier, cv::SOLVEPNP_ITERATIVE || cv::SOLVEPNP_EPNP);
    cv::Rodrigues(Rvector, Rcw);
    std::cout << Rcw << std::endl;
    std::cout << tcw << std::endl;
    int numInlier = 0;
    for(size_t i = 0; i < match2D3D.size(); ++i){
        if(inlier[i]){
            numInlier++;
            currentFrame_->leftMapPoint_[match2D3D[i].queryIdx] = lastFrame_->leftMapPoint_[match2D3D[i].trainIdx];
        }
    }
    std::cout << "num of inlier: " << numInlier << std::endl;
    SE3 pose = Convert::toSE3(Rcw, tcw);
    currentFrame_->SetPose(pose);
    cv::Mat orbImg;
    std::cout << "good size : " << match2D3D.size() << std::endl;
	drawMatches(currentFrame_->leftImg_, currentFrame_->leftKeypoint_, lastFrame_->leftImg_, lastFrame_->leftKeypoint_, match2D3D, orbImg,
		cv::Scalar::all(-1), cv::Scalar::all(-1), std::vector<char>(), cv::DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS);
    cv::imshow("ORB_demo", orbImg);
	cv::waitKey(0);

    //std::cout << std::endl << std::endl << "No" << std::endl << std::endl;
    //std::cout << "size: " << kps1.size() << " " << kps2.size() << std::endl;
    /*std::vector<uchar> inlier;
	cv::Mat essential = cv::findEssentialMat(kps2, kps1, cameraLeft_->fx_, cv::Point2d(cameraLeft_->cx_, cameraLeft_->cy_), cv::RANSAC, 0.999, 1.0, inlier);
    cv::Mat R, t;
    cv::recoverPose(essential, kps2, kps1, R, t, cameraLeft_->fx_, cv::Point2d(cameraLeft_->cx_, cameraLeft_->cy_));
    int numInlier = 0;
    for(size_t i = 0; i < goodMatches.size(); ++i){
        if(inlier[i]){
            if(lastFrame_->leftMapPoint_[goodMatches[i].trainIdx])
                numInlier++;
            currentFrame_->leftMapPoint_[goodMatches[i].queryIdx] = lastFrame_->leftMapPoint_[goodMatches[i].trainIdx];
        }
    }
    //std::cout << std::endl << R << std::endl;
    //std::cout << std::endl << std::endl << "No" << std::endl << std::endl;
    SE3 poseLastToNow = Convert::toSE3(R, t);
    SE3 pose = poseLastToNow * lastFrame_->GetPose();
    currentFrame_->SetPose(pose);*/

    return numInlier;
}

int FrontEnd::CreateNewMapPoint(){
    int numNewCreate = 0;
    Mat44 T1_eigen = cameraLeft_->pose().matrix();
    Mat44 T2_eigen = cameraRight_->pose().matrix();
    cv::Mat T1 = (cv::Mat_<double>(3,4) <<
        T1_eigen(0,0), T1_eigen(0,1), T1_eigen(0,2), T1_eigen(0,3),
        T1_eigen(1,0), T1_eigen(1,1), T1_eigen(1,2), T1_eigen(1,3),
        T1_eigen(2,0), T1_eigen(2,1), T1_eigen(2,2), T1_eigen(2,3));
    cv::Mat T2 = (cv::Mat_<double>(3,4) <<
        T2_eigen(0,0), T2_eigen(0,1), T2_eigen(0,2), T2_eigen(0,3),
        T2_eigen(1,0), T2_eigen(1,1), T2_eigen(1,2), T2_eigen(1,3),
        T2_eigen(2,0), T2_eigen(2,1), T2_eigen(2,2), T2_eigen(2,3));

    std::vector<cv::DMatch> match = currentFrame_->GetMatch();
    std::vector<cv::KeyPoint> lkps = currentFrame_->GetLeftKpts();
    std::vector<cv::KeyPoint> rkps = currentFrame_->GetRightKpts();
    for(int i = 0, iend = match.size(); i < iend; ++i){
        if(currentFrame_->leftMapPoint_[match[i].queryIdx]) continue;
        cv::Point2f pt1 = lkps[match[i].queryIdx].pt;
        cv::Point2f pt2 = rkps[match[i].trainIdx].pt;
        std::vector<cv::Point2f> camPt1 = {cameraLeft_->pixel2camera(pt1)};
        std::vector<cv::Point2f> camPt2 = {cameraRight_->pixel2camera(pt2)};
        cv::Mat point4d;
        cv::triangulatePoints(T1, T2, camPt1, camPt2, point4d);
        
        point4d = point4d / point4d.at<float>(3,0);

        if(point4d.at<float>(2,0) > 0){
            Vec3 worldpoint(point4d.at<float>(0,0), point4d.at<float>(1,0), point4d.at<float>(2,0));
            if(worldpoint(0,0) > 500*baseline_ || worldpoint(1,0) > 500*baseline_ || worldpoint(2,0) > 500*baseline_)
                //std::cout << "error point position: " << worldpoint << std::endl;
                continue;

            SE3 Twc = currentFrame_->GetPose().inverse();
            worldpoint = Twc * worldpoint;
            MapPoint::Ptr newMapPoint(new MapPoint(worldpoint));
            newMapPoint->AddFrameObserve(currentFrame_);
            currentFrame_->leftMapPoint_[match[i].queryIdx] = newMapPoint;
            map_->AddMapPoint(newMapPoint);
            numNewCreate++;
        }
    }
    return numNewCreate;
}

}