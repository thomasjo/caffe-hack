@echo off
SET GLOG_logtostderr=1
"../../bin/train_net.exe" cifar10_quick_solver.prototxt

rem reduce learning rate by fctor of 10 after 8 epochs
SET GLOG_logtostderr=1
"../../bin/train_net.exe" cifar10_quick_solver_lr1.prototxt cifar10_quick_iter_4000.solverstate
pause
