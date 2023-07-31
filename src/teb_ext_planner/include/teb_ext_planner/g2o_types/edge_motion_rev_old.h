/*********************************************************************
 *
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2016,
 *  TU Dortmund - Institute of Control Theory and Systems Engineering.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of the institute nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 * 
 * Notes:
 * The following class is derived from a class defined by the
 * g2o-framework. g2o is licensed under the terms of the BSD License.
 * Refer to the base class source for detailed licensing information.
 *
 * Author: Christoph Rösmann
 *********************************************************************/
#ifndef EDGE_MOTION_REV_OLD_H_
#define EDGE_MOTION_REV_OLD_H_

#include <teb_ext_planner/g2o_types/vertex_pose.h>
#include <teb_ext_planner/g2o_types/base_teb_edges.h>
#include <teb_ext_planner/g2o_types/penalties.h>
#include "g2o/core/base_unary_edge.h"

#include <ros/ros.h>
#include <ros/assert.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseArray.h>
#include <tf/tf.h>

#include <complex>
#include <iterator>

#include <teb_ext_planner/obstacles.h>
#include <sensor_msgs/JointState.h>



namespace teb_ext_planner
{

/**
 * @class EdgeMotionRev
 * @brief Edge defining the cost function for penalzing a specified turning direction, in particular left resp. right turns
 * 
 * The edge depends on two consecutive vertices \f$ \mathbf{s}_i, \mathbf{s}_{i+1} \f$ and penalizes a given rotation direction
 * based on the \e weight and \e dir (\f$ dir \in \{-1,1\} \f$)
 * \e dir should be +1 to prefer left rotations and -1 to prefer right rotations  \n
 * \e weight can be set using setInformation(). \n
 * @see TebOptimalPlanner::AddEdgeMotionRev
 */     
class EdgeMotionRev : public BaseTebBinaryEdge<1, double, VertexPose, VertexPose>
{
public:
    
  /**
   * @brief Construct edge.
   */    
  EdgeMotionRev() 
  {
    _measurement = 1;
    
  }
  const TimedElasticBand* teb_;
  double BodyAngle;
  std::string node_handle_name = "~/rev_cost/";
  ros::NodeHandle nh_;
  //const TebConfig* cfg_; //!< Store TebConfig class for parameters
  
  /**
   * @brief Actual cost function
   */    
  void computeError()
  {
    
    double achsabs = 0.383;
    const std::vector<teb_ext_planner::VertexPose*> pose_vec = teb_->poses();
    int sizePoses = teb_->sizePoses();
    //ROS_INFO("%f",pose_vec[0]->theta());
    //ROS_INFO("%f",BodyAngle);

    int sizeverts = sizeof(_vertices)/sizeof(_vertices[0]);
    const VertexPose* conf1 = static_cast<const VertexPose*>(_vertices[0]);
    const VertexPose* conf2 = static_cast<const VertexPose*>(_vertices[1]);
    //ROS_INFO("rev Error comp");
    double thetapose = 0;

    if(conf1->theta()<0){
      thetapose += 2*M_PI;
    }

    Eigen::Vector2d deltaS = conf2->position() - conf1->position();
    double winkelmove = std::atan2(deltaS[1],deltaS[0]);
    if(winkelmove<0){
      winkelmove += 2*M_PI;
    }

    double winkeldiff = abs (winkelmove - thetapose);

    if (winkeldiff>  5 || winkeldiff < 1.5){// rückwärtsfahrt
      //ROS_INFO("vorwarts %f",winkeldiff);
      _error[0] = 0;
    }
    else{
      _error[0] = 0;
      //ROS_INFO("ruckwarts %f",winkeldiff);
    }


    //ROS_ASSERT_MSG(std::isfinite(_error[0]), "EdgeMotionRev::computeError() _error[0]=%f\n",_error[0]);
  }

  /**
   * @brief Specify the prefered direction of rotation
   * @param dir +1 to prefer the left side, -1 to prefer the right side
   */ 
  void setRotDir(double dir)
  {
    _measurement = dir;
  }

  void setTeb(TimedElasticBand& teb)
  {
    teb_ = &teb;
  }

  void setBodyAngle(double angle)
  {
    BodyAngle = angle;
  }

    
  /** Prefer rotations to the right */
  void preferLeft() {_measurement = 1;}  
    
  
public: 
  EIGEN_MAKE_ALIGNED_OPERATOR_NEW

};
  
    

} // end namespace

#endif
