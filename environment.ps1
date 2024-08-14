# Setup path for vim from Git installation
[Environment]::SetEnvironmentVariable("PATH", [Environment]::GetEnvironmentVariable("PATH", "Machine") + ";$env:ProgramFiles\Git\usr\bin", "Machine")
