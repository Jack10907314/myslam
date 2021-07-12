#pragma once

#include "Include.h"

namespace myslam{

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

    bool isKeyframe_ = false;
    double timeStamp_;
    cv::Mat leftImg_, rightImg_;
    std::mutex poseMutex_;
private:
    unsigned long id_;
    SE3 pose_;
    std::vector<cv::KeyPoint> leftKeypoint_;
    std::vector<cv::KeyPoint> rightKeypoint_;
    cv::Mat leftDescriptor_;
    cv::Mat rightDescriptor_;
    std::vector<cv::DMatch> goodMatch_;
    std::vector<bool> outlier_;

};

}