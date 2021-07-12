#pragma once

#include
class Feature{
public:
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
    typedef std::shared_ptr<Frame> Ptr;
    
    void SetPose(SE3 pose);
    SE3 GetPose();
private:
    unsigned long id_;
    SE3 pose_;
    std::vector<cv::KeyPoint> leftKeypoint_;
    std::vector<cv::KeyPoint> rightKeypoint_;
    cv::Mat leftDescriptor_;
    cv::Mat rightDescriptor_;
};

}
