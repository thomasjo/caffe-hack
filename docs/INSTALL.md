# Windows Installation

#### Want to run first before build by yourself?
You can download the windows x64 [standalone package](https://dl.dropboxusercontent.com/u/3466743/caffe-vs2012/standalone.7z) and run directly on MNIST dataset.

#### Prerequisites
You may need the followings to build the code:
- Windows 64-bit
- MS Visual Studio 2012
- CUDA toolkit
- Other dependencies which you can directly download from [here](https://dl.dropboxusercontent.com/u/3466743/caffe-vs2012/dependency.7z).

#### Build Steps
Currently it can be built by VS2012 for x64 flatform only. This is because the dependencies mentioned above is cross-compiled to support x64 only. If you want to build on 32bit windows, you need to rebuild your own 3rd-party libraries.
- Check out the code and switch to *windows* branch
- Download the dependency file and extract the folders inside to project root directory.
- Include any .cpp you want to build in the ./example directory to MainCaller.cpp.
- Open the solution file in ./build/MSVC
- Switch build target to x64 platform (Both debug and release are OK).
- Build the code and you may find the *MainCaller.exe* in ./bin
- Run *./scripts/runMNIST* to see the training progress if you choose to build train_net.cpp which is the default one in MainCaller.cpp.

#### Known Issues
I have trained on ImageNet with this windows porting as well. And some Issues found are:
- Loading protobuffer from binary file is not successful.
- Batch size of 256 exceeds the maximum block number for cuda on my GTX Titan. So using size of 200 is fine.
- The speed is much slower than the one build on Ubuntu. 20 iterations take 79s on Windows, whereas same number of iterations take about 30s.
