tools\nuget.exe update -self

if not exist package mkdir package
if not exist package\content mkdir package\content
if not exist package\lib mkdir package\lib
if not exist package\lib\4.0 mkdir package\lib\4.0

copy JWT\bin\Release\jose-jwt.dll package\lib\4.0\
copy LICENSE package\content

tools\nuget.exe pack Xamarin-JOSE-JWT.nuspec -BasePath package

pause