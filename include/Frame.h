#pragma once

#include "Include.h"

namespace myslam{
class MapPoint;
class Frame{
public:
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
    typedef std::shared_ptr<Frame> Ptr;
    
    Frame();
    Frame(unsigned long id, double timeStamp, SE3 pose, cv::Mat leftImg, cv::Mat rightImg);
    void SetPose(SE3 pose);
    SE3 GetPose();
    void SetKeyframe();
    void DetectFeature();
    void MatchFeature();
    int DetectOutlier();
    int GetInlierNum() {return numOfInlier_;}
    std::vector<cv::DMatch> GetMatch();
    std::vector<cv::KeyPoint> GetLeftKpts();
    std::vector<cv::KeyPoint> GetRightKpts();

    unsigned long id_;
    bool isKeyframe_ = false;
    double timeStamp_;
    cv::Mat leftImg_, rightImg_;
    std::mutex poseMutex_;
    std::mutex pointMutex_;
    std::vector<cv::KeyPoint> leftKeypoint_;
    std::vector<cv::KeyPoint> rightKeypoint_;
    cv::Mat leftDescriptor_;
    cv::Mat rightDescriptor_;
    std::vector<cv::DMatch> goodMatch_;
    std::vector<std::shared_ptr<MapPoint>> leftMapPoint_;
    std::vector<uchar> inlier_;
private:
    SE3 pose_ = SE3();
    int numOfInlier_ = 0;
};

}