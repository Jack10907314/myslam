#pragma once

#include "Include.h"
#include "config.h"
#include "FrontEnd.h"
#include "BackEnd.h"
#include "dataset.h"
#include "viewer.h"

namespace myslam{

class System{

};
class VO{
public:
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
    typedef std::shared_ptr<VO> Ptr;

    VO(std::string &config_path);
    bool Initial();
    void Run();

private:
    std::shared_ptr<FrontEnd> frontend_ = nullptr;
    std::shared_ptr<BackEnd> backend_ = nullptr;
    //Frontend::Ptr frontend_ = nullptr;
    //Backend::Ptr backend_ = nullptr;
    Map::Ptr map_ = nullptr;
    Viewer::Ptr viewer_ = nullptr;
    Dataset::Ptr dataset_ = nullptr;
    std::string configPath_;
};
}