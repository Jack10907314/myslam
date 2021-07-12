#include "FrontEnd.h"

namespace myslam{

bool FrontEnd::AddFrame(Frame::Ptr newFrame){
    if(!newFrame) return false;
    newFrame->DetectFeature();
    newFrame->MatchFeature();
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
    
    lastFrame_ = currentFrame_;
    return true;
}

void FrontEnd::StereoInitial(){

}

void FrontEnd::Track(){

}

}