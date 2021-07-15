#include "System.h"

namespace myslam{

VO::VO(std::string &config_path)
    : configPath_(config_path) {}

bool VO::Initial(){
    if (Config::SetParameterFile(configPath_) == false) {
        return false;
    }

    frontend_ = FrontEnd::Ptr(new FrontEnd());
    backend_ = BackEnd::Ptr(new BackEnd());
    map_ = Map::Ptr(new Map());
    viewer_ = Viewer::Ptr(new Viewer());
    dataset_ = Dataset::Ptr(new Dataset(Config::Get<std::string>("dataset_dir")));
    bool res = dataset_->Init();
    assert(res == true);

    frontend_->SetBackend(backend_);
    frontend_->SetMap(map_);
    frontend_->SetViewer(viewer_);
    frontend_->SetCamera(dataset_->GetCamera(0), dataset_->GetCamera(1));

    viewer_->SetMap(map_);
    return true;
}

void VO::Run(){
    std::cout << "VO run" << std::endl;
    while(1){
        Frame::Ptr newFrame = dataset_->NextFrame();
        bool successful = frontend_->AddFrame(newFrame);
        if(!successful) break;
    }
    backend_->Stop();
    //viewer->
    std::cout << "VO close" << std::endl;
}

}