// requires Windows 10, Windows 7 Service Pack 1, Windows 8, Windows 8.1, Windows Server 2003 Service Pack 2, Windows Server 2008 R2 SP1, Windows Server 2008 Service Pack 2, Windows Server 2012, Windows Vista Service Pack 2, Windows XP Service Pack 3
// http://www.microsoft.com/en-US/download/details.aspx?id=48145

[CustomMessages]
buildtools2015_title=Microsoft Build Tools 2015

en.buildtools2015_size=24.5 MB
de.buildtools2015_size=24,5 MB

[Code]
const
	buildtools2015_url = 'http://download.microsoft.com/download/E/E/D/EEDF18A8-4AED-4CE0-BEBE-70A83094FC5A/BuildTools_Full.exe';
	buildtools2015_productcode = '{D1437F51-786A-4F57-A99C-F8E94FBA1BD8}';

procedure buildtools2015();
begin
		if (not msiproduct(buildtools2015_productcode)) then
			AddProduct('BuildTools_Full.exe', '/passive /norestart',
				CustomMessage('buildtools2015_title'),
				CustomMessage('buildtools2015_size'),
				buildtools2015_url,
				false, false);
end;