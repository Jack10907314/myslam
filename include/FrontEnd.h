#pragma once

#include "Include.h"
#include "Frame.h"
#include "camera.h"
#include "Map.h"
#include "BackEnd.h"
//#include "viewer.h"
enum class FrontEndStatus{
    Initial,
    Track,
    Lost
};

namespace myslam{
class BackEnd;
class FrontEnd{
public:
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
    typedef std::shared_ptr<FrontEnd> Ptr;

    void SetBackend(std::shared_ptr<BackEnd> backend) {backend_ = backend;}
    //void SetViewer(Viewer::Ptr viewer) {viewer_ = viewer;}
    void SetMap(Map::Ptr map) {map_ = map;}
    void SetCamera(Camera::Ptr cameraLeft, Camera::Ptr cameraRight){
        cameraLeft_ = cameraLeft;
        cameraRight_ = cameraRight;
    }
    bool AddFrame(Frame::Ptr newFrame);
    void StereoInitial();
    void Track();
    
private:
    Frame::Ptr currentFrame_ = nullptr; 
    Frame::Ptr lastFrame_ = nullptr;     
    Camera::Ptr cameraLeft_ = nullptr;   
    Camera::Ptr cameraRight_ = nullptr;  

    Map::Ptr map_ = nullptr;
    std::shared_ptr<BackEnd> backend_ = nullptr;
    //Viewer::Ptr viewer_ = nullptr;

    FrontEndStatus status_ = FrontEndStatus::Initial;
};

}