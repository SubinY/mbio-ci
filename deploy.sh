#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd ./dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy2'
git config --local user.name "subin_hu"
git config --local user.email "490101299@qq.com"

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:SubinY/mbio.git master:gh-pages

# 如果使用 travis 持续集成
# git push -f https://${access_token}@github.com:SubinY/mbio.git master:gh-pages

git push -f https://${access_token}@github.com/SubinY/mbio.github.io.git master:gh-pages

cd -