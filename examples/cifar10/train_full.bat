@echo off
SET GLOG_logtostderr=1
"../../bin/train_net.exe" cifar10_full_solver.prototxt

rem reduce learning rate by factor of 10
SET GLOG_logtostderr=1
"../../bin/train_net.exe" cifar10_full_solver_lr1.prototxt cifar10_full_iter_60000.solverstate

rem reduce learning rate by factor of 10
SET GLOG_logtostderr=1
"../../bin/train_net.exe" cifar10_full_solver_lr2.prototxt cifar10_full_iter_65000.solverstate
pause
