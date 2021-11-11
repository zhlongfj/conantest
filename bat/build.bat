cd ..
rmdir /S /Q build
mkdir build 
cd build && conan install ..
set VS="Visual Studio 16 2019"
set arc=x64
set Configuration=Release
cmake -G %VS% -A %arc% -DCMAKE_BUILD_TYPE=%Configuration ../
for /f "delims==" %%a in ('dir /b *.sln')do "%MSBUILD_PATH%"  /t:Build /property:Configuration="%Configuration%" %%a