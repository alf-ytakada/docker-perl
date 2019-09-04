ベースイメージは
 https://hub.docker.com/_/perl/
です。

とりあえず使いそうなモジュールを入れています。

が、ここから自分のデーモン等を起動させるのはTODO。

dockerhubは
　https://hub.docker.com/r/d2cdytakada/perl/

build
===

   d build -t d2cdytakada/perl  .

push
===

   d push d2cdytakada/perl:latest

