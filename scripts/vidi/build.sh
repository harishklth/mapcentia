#!/bin/bash
docker run \
        --rm \
        --volumes-from=vidi \
        -t -i mapcentia/vidi grunt --gruntfile /root/vidi/Gruntfile.js env gitreset browserify less hogan shell uglify processhtml cssmin cacheBust

docker run \
        --rm \
        --volumes-from=vidi \
        -t -i mapcentia/vidi grunt --gruntfile /root/vidi/public/bower_components/bootstrap-material-design/Gruntfile.js serve