# Context Prompt
function prompt { 
	"[" + "$([Environment]::UserName)" + "@" + "$((Get-ChildItem Env:Computername).Value)" + "]-[" + "$((Get-Location).Path)" + "]" + "`r`n> "
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
