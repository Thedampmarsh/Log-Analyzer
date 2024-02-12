#!/usr/bin/awk -f
{
        date = $4
        method = $6
        response = $9
        #rest_of_line = substr($0, 15)
        browser = $12
        request = ""; for (i = 13; i <= NF; i++) {request = request " " $i};

        sub(/\[/, "" "", date);
        sub(/"/, "" "", method);
        sub(/"/, "" "", browser);
        print "SOURCE:" " " $1 "\nDATE:" " " date "\nMETHOD:" " " method "\nREPONSE:" " " response "\nBROWSER:" " " browser "\nREQUEST:" " " request;
        print " ";
}