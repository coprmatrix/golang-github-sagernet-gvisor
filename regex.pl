
s~%global\s+goipath\s+(.*)/(.*)~%global goihead \2\n%global goipath \1/%{goihead}~g;
s~(Version:)[^0-9\.]*(.*)~\1  \2~g;
s~%gocheck~~g;
s~Source:.*~Source: https://%{goipath}/archive/%{tag}/%{goihead}-%{tag}.tar.gz~g;
