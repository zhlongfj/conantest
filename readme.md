1 install python
2 install cmake：pip install cmake
3 install conan：pip install conan
4 mkdir build && cd build && conan install ..

备注：
该平台没有这个版本的库，可以降低版本：ERROR: Unable to find 'fmt/8.0.1' in remotes
查找有哪些版本的库：conan search fmt --remote=conan-center
查看某个版本库的详细信息：conan inspect fmt/8.0.0
没有已经编译好的库：ERROR: Missing prebuilt package for 'fmt/8.0.0'
加上参数：--build missing，如：conan install .. --build missing

mac下配置python3
1 brew install python
2 which python3
3 用which python3返回的结果：path配置成默认python路径：
echo "alias python=path" >> ~/.zshrc
4 用which pip3返回的结果：path配置成默认pip路径：
echo "alias pip=path" >> ~/.zshrc
