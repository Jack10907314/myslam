#include "Include.h"
#include "System.h"
#include <string>

std::string pathOfConfig = "../example/KITTI_05.yaml";

int main(int, char**) {
    myslam::VO::Ptr vo(new myslam::VO(pathOfConfig));
    bool successful = vo->Initial();
    assert(successful);
    vo->Run();
}
