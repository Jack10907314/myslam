#pragma once

#include "Include.h"
#include "Convert.h"
#include "Frame.h"
#include "camera.h"
#include "Map.h"
#include "BackEnd.h"
#include "MapPoint.h"
#include "viewer.h"

enum class FrontEndStatus{
    Initial,
    Track,
    Lost
};

namespace myslam{
class BackEnd;
class Map;
class FrontEnd{
public:
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
    typedef std::shared_ptr<FrontEnd> Ptr;

    void SetBackend(std::shared_ptr<BackEnd> backend) {backend_ = backend;}
    void SetViewer(Viewer::Ptr viewer) {viewer_ = viewer;}
    void SetMap(Map::Ptr map) {map_ = map;}
    void SetCamera(Camera::Ptr cameraLeft, Camera::Ptr cameraRight){
        cameraLeft_ = cameraLeft;
        cameraRight_ = cameraRight;
        baseline_ = cameraRight_->baseline_;
    }
    bool AddFrame(Frame::Ptr newFrame);
    bool StereoInitial();
    void Track();
    int TrackFromLastFrame();
    int CreateNewMapPoint();

private:
    Frame::Ptr currentFrame_ = nullptr; 
    Frame::Ptr lastFrame_ = nullptr;     
    Camera::Ptr cameraLeft_ = nullptr;   
    Camera::Ptr cameraRight_ = nullptr;  

    Map::Ptr map_ = nullptr;
    std::shared_ptr<BackEnd> backend_ = nullptr;
    Viewer::Ptr viewer_ = nullptr;

    FrontEndStatus status_ = FrontEndStatus::Initial;

    int num_features_ = 200;
    int num_features_init_ = 100;
    int num_features_tracking_ = 50;
    int num_features_tracking_bad_ = 10;
    int num_features_needed_for_keyframe_ = 80;

    double baseline_ = 0;
    SE3 relativeMotion_ = SE3();
};

}