#!/bin/sh
"/usr/lib/pycharm/jre/jre/bin/java" -cp "/usr/lib/pycharm/plugins/git4idea/lib/git4idea-rt.jar:/usr/lib/pycharm/lib/xmlrpc-2.0.jar:/usr/lib/pycharm/lib/commons-codec-1.9.jar:/usr/lib/pycharm/lib/util.jar" org.jetbrains.git4idea.http.GitAskPassApp "$@"
