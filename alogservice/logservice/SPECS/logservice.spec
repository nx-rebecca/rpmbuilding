Name:           logservice
Version:        1.0
Release:        1
Summary:        a simple logger

License:        GPLv3
Source0:        %{name}-%{version}.tar.bz2
BuildArch:      noarch

Requires:       python3

%description
This is really just a toy.

%prep
%setup -q

%install
rm -rf $RPM_BUILD_ROOT
ls -lR
install -D timelog.py $RPM_BUILD_ROOT/opt/logservice/timelog.py
install -D logservice.service $RPM_BUILD_ROOT/etc/systemd/system/logservice.service

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(755,root,root,-)
/opt/logservice/timelog.py
/etc/systemd/system/logservice.service
%exclude /opt/logservice/timelog.pyc
%exclude /opt/logservice/timelog.pyo
