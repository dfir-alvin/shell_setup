# Colorized Prompt
function prompt { 
	"$([char]27)[91m" + "[" + "$([char]27)[0m$([Environment]::UserName)$([char]27)[91m" + "@" + "$([char]27)[96m$((Get-ChildItem Env:Computername).Value)$([char]27)[91m" + "]-[" + "$([char]27)[0m" + "$([char]27)[92m$((Get-Location).Path)" + "$([char]27)[91m" + "]" + "$([char]27)`r`n[0m> "
	}

# Aliases
function .. { cd .. }
function ll { ls }
function df { Get-Volume }
function ifconfig { ipconfig }
new-alias grep findstr
