#!/bin/bash
mkdir -p /share/tvheadend/recordings

#mkdir -p ~/.wg++
#ln -sf /share/tvheadend/wg++/guide.xml ~/.wg++/guide.xml
#
##Install WebGrabPlus
#if  [ "$(ls -A /share/tvheadend/wg++)" ]; then
#    echo "[INFO] Webgrab+ already installed"
#else
#    echo "[INFO] No webgrab+ installation found - Installing webgrab+"
#    cd /tmp  && \
#    curl http://webgrabplus.com/sites/default/files/download/SW/V5.1.0/WebGrabPlus_V5.1_install.tar.gz -o webgrabplus.tar.gz && \
#    tar -xvf webgrabplus.tar.gz && rm webgrabplus.tar.gz  && \
#    mv .wg++/ /share/tvheadend/wg++  && \
#    cd /share/tvheadend/wg++  && \
#    ./install.sh
#
#    rm -rf siteini.pack/  && \
#    git clone https://github.com/DeBaschdi/webgrabplus-siteinipack.git  && \
#    cp -R webgrabplus-siteinipack/siteini.pack/ siteini.pack  && \
#    cp siteini.pack/UK/* siteini.user/
#fi
#
#curl -o /usr/bin/tv_grab_wg++ http://www.webgrabplus.com/sites/default/files/tv_grab_wg.txt  && \
#chmod a+x /usr/bin/tv_grab_wg++
#
#echo "0 0 * * * /share/tvheadend/wg++/run.sh" >> /var/spool/cron/root
#crond

#echo "[INFO] Starting TVHeadend"

/usr/bin/tvheadend --firstrun -u root -g root -c /share/tvheadend -B
