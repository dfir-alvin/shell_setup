# Colorized Prompt
function prompt { 
	"$([char]27)[91m" + "[" + "$([char]27)[0m$([Environment]::UserName)$([char]27)[91m" + "@" + "$([char]27)[96m$((Get-ChildItem Env:Computername).Value)$([char]27)[91m" + "]-[" + "$([char]27)[0m" + "$([char]27)[92m$((Get-Location).Path)" + "$([char]27)[91m" + "]" + "$([char]27)`r`n[0m> "
	}

# Aliases
function .. { cd .. }
function ll { ls }
function df { Get-Volume }
function ifconfig { ipconfig }
function md5 { Get-FileHash -Algorithm md5 $args[0]}
function sha1 { Get-FileHash -Algorithm sha1 $args[0]}
function sha256 { Get-FileHash -Algorithm sha256 $args[0]}
function lgrep { Select-String -Pattern $args[0]}
#function lgrep { Select-String -Pattern $args[0] -CaseSensitive $args[1]}
new-alias grep findstr
