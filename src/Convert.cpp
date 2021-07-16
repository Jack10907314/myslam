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

    cv::Point3f Convert::toPoint3f(Vec3 position){
        cv::Point3f point(position(0,0), position(1,0), position(2,0));
        return point;
    }

    cv::Mat Convert::Get_R(SE3 pose){
        MatXX T = pose.matrix();
        cv::Mat R = (cv::Mat_<double>(3,3) << 
            T(0,0), T(0,1), T(0,2),
            T(1,0), T(1,1), T(1,2),
            T(2,0), T(2,1), T(2,2));
        return R;
    }
    cv::Mat Convert::Get_t(SE3 pose){
        MatXX T = pose.matrix();
        cv::Mat t = (cv::Mat_<double>(3,1) << 
            T(0,3),
            T(1,3),
            T(2,3));
        return t;
    }
}