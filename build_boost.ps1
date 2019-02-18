Write-Host "getting boost"
wget 'https://dl.bintray.com/boostorg/release/1.69.0/source/boost_1_69_0.zip'

Write-Host "unzipping boost"
unzip -qq boost_1_69_0.zip
mv boost_1_69_0 boost

cd boost

Write-Host "Bootstrapping"

bootstrap.bat
