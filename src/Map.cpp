#include "Map.h"

namespace myslam{

Map::Map() {}

Map::KeyFramesType Map::GetKeyFrames(){
    std::unique_lock<std::mutex> lock(dataMutex_);
    return keyFrames_;
}

Map::MapPointsType Map::GetMapPoints(){
    std::unique_lock<std::mutex> lock(dataMutex_);
    return mapPoints_;
}

Map::KeyFramesType Map::GetActiveKeyFrames(){
    std::unique_lock<std::mutex> lock(dataMutex_);
    return activeKeyFrames_;
}

Map::MapPointsType Map::GetActiveMapPoints(){
    std::unique_lock<std::mutex> lock(dataMutex_);
    return activeMapPoints_;
}

void Map::AddKeyFrame(Frame::Ptr newKeyFrame){
    std::unique_lock<std::mutex> lock(dataMutex_);
    keyFrames_.push_back(newKeyFrame);
    activeKeyFrames_.push_back(newKeyFrame);
    if(activeKeyFrames_.size() > num_active_keyframes_)
        activeKeyFrames_.erase(activeKeyFrames_.begin());
}

void Map::AddMapPoint(MapPoint::Ptr newMapPoint){

}

}