#include "Convert.h"

namespace myslam{


    SE3 Convert::toSE3(cv::Mat cvR, cv::Mat cvt){
        Eigen::Matrix<double, 3, 3> R;
        R << cvR.at<double>(0,0), cvR.at<double>(0,1), cvR.at<double>(0,2),
             cvR.at<double>(1,0), cvR.at<double>(1,1), cvR.at<double>(1,2),
             cvR.at<double>(2,0), cvR.at<double>(2,1), cvR.at<double>(2,2);
        Eigen::Matrix<double, 3, 1> t;
        t << cvt.at<double>(0,0), cvt.at<double>(1,0), cvt.at<double>(2,0);
        //std::cout << std::endl << R << std::endl;
        return SE3(R, t);
    }

}