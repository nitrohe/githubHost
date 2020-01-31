# github Host

## *windows*

>  github代码clone加速

### get host

使用cmd脚本nscmd.bat获取github host 或者单独执行以下cmd命令

`nslookup github.com`  
`nslookup github.global.ssl.fastly.net`

 写入到hosts文件中

### switch host set
 SwitchHosts 软件设置远程 hosts更新规则 `https://gitee.com/nitrohe/githubHost/raw/master/hosts` （使用的是码云上的hosts文件，防止github ip更新时获取不到）

备用`https://raw.githubusercontent.com/nitrohe/githubHost/master/hosts`

### manual modify

`手动更新文件C:\Windows\System32\drivers\etc\hosts` 