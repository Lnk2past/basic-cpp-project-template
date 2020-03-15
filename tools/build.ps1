mkdir -Force build
Set-Location build
cmake ..
msbuild basic-cpp-project-template.sln