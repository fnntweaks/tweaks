Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Text = "Win11 Ultimate Optimizer"
$form.Size = New-Object System.Drawing.Size(1000, 740)
$form.BackColor = [System.Drawing.Color]::White
$form.StartPosition = "CenterScreen"

$tabControl = New-Object System.Windows.Forms.TabControl
$tabControl.Size = New-Object System.Drawing.Size(960, 620)
$tabControl.Location = New-Object System.Drawing.Point(10, 10)
$tabControl.Font = New-Object System.Drawing.Font("Segoe UI", 9, [System.Drawing.FontStyle]::Regular)
$form.Controls.Add($tabControl)

$logBox = New-Object System.Windows.Forms.TextBox
$logBox.Multiline = $true
$logBox.ScrollBars = "Vertical"
$logBox.Location = New-Object System.Drawing.Point(10, 640)
$logBox.Size = New-Object System.Drawing.Size(480, 60)
$logBox.Font = New-Object System.Drawing.Font("Consolas", 9)
$logBox.ReadOnly = $true
$form.Controls.Add($logBox)

function Log($msg) {
    $logBox.AppendText("`r`n$msg")
}

$categoryCheckboxes = @{}

# Performance tab
$tabPerformance = New-Object System.Windows.Forms.TabPage
$tabPerformance.Text = "Performance"
$panelPerformance = New-Object System.Windows.Forms.Panel
$panelPerformance.Dock = 'Fill'
$panelPerformance.AutoScroll = $true
$tabPerformance.Controls.Add($panelPerformance)
$tabControl.TabPages.Add($tabPerformance)
$categoryCheckboxes["Performance"] = @()

$chkPerformance1 = New-Object System.Windows.Forms.CheckBox
$chkPerformance1.Text = "Disable animations"
$chkPerformance1.Location = New-Object System.Drawing.Point(10, 0)
$chkPerformance1.AutoSize = $true
$chkPerformance1.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance1)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance1; Func = { Log "Applied: Disable animations" } }

$chkPerformance2 = New-Object System.Windows.Forms.CheckBox
$chkPerformance2.Text = "Enable high performance power plan"
$chkPerformance2.Location = New-Object System.Drawing.Point(10, 30)
$chkPerformance2.AutoSize = $true
$chkPerformance2.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance2)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance2; Func = { Log "Applied: Enable high performance power plan" } }

$chkPerformance3 = New-Object System.Windows.Forms.CheckBox
$chkPerformance3.Text = "Disable indexing"
$chkPerformance3.Location = New-Object System.Drawing.Point(10, 60)
$chkPerformance3.AutoSize = $true
$chkPerformance3.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance3)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance3; Func = { Log "Applied: Disable indexing" } }

$chkPerformance4 = New-Object System.Windows.Forms.CheckBox
$chkPerformance4.Text = "Disable prefetch"
$chkPerformance4.Location = New-Object System.Drawing.Point(10, 90)
$chkPerformance4.AutoSize = $true
$chkPerformance4.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance4)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance4; Func = { Log "Applied: Disable prefetch" } }

$chkPerformance5 = New-Object System.Windows.Forms.CheckBox
$chkPerformance5.Text = "Disable Superfetch"
$chkPerformance5.Location = New-Object System.Drawing.Point(10, 120)
$chkPerformance5.AutoSize = $true
$chkPerformance5.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance5)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance5; Func = { Log "Applied: Disable Superfetch" } }

$chkPerformance6 = New-Object System.Windows.Forms.CheckBox
$chkPerformance6.Text = "Disable startup delay"
$chkPerformance6.Location = New-Object System.Drawing.Point(10, 150)
$chkPerformance6.AutoSize = $true
$chkPerformance6.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance6)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance6; Func = { Log "Applied: Disable startup delay" } }

$chkPerformance7 = New-Object System.Windows.Forms.CheckBox
$chkPerformance7.Text = "Clear temporary files"
$chkPerformance7.Location = New-Object System.Drawing.Point(10, 180)
$chkPerformance7.AutoSize = $true
$chkPerformance7.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance7)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance7; Func = { Log "Applied: Clear temporary files" } }

$chkPerformance8 = New-Object System.Windows.Forms.CheckBox
$chkPerformance8.Text = "Disable transparency effects"
$chkPerformance8.Location = New-Object System.Drawing.Point(10, 210)
$chkPerformance8.AutoSize = $true
$chkPerformance8.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance8)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance8; Func = { Log "Applied: Disable transparency effects" } }

$chkPerformance9 = New-Object System.Windows.Forms.CheckBox
$chkPerformance9.Text = "Remove Xbox Game Bar"
$chkPerformance9.Location = New-Object System.Drawing.Point(10, 240)
$chkPerformance9.AutoSize = $true
$chkPerformance9.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance9)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance9; Func = { Log "Applied: Remove Xbox Game Bar" } }

$chkPerformance10 = New-Object System.Windows.Forms.CheckBox
$chkPerformance10.Text = "Turn off visual effects"
$chkPerformance10.Location = New-Object System.Drawing.Point(10, 270)
$chkPerformance10.AutoSize = $true
$chkPerformance10.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance10)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance10; Func = { Log "Applied: Turn off visual effects" } }

$chkPerformance11 = New-Object System.Windows.Forms.CheckBox
$chkPerformance11.Text = "Optimize paging file"
$chkPerformance11.Location = New-Object System.Drawing.Point(10, 300)
$chkPerformance11.AutoSize = $true
$chkPerformance11.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance11)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance11; Func = { Log "Applied: Optimize paging file" } }

$chkPerformance12 = New-Object System.Windows.Forms.CheckBox
$chkPerformance12.Text = "Disable hibernation"
$chkPerformance12.Location = New-Object System.Drawing.Point(10, 330)
$chkPerformance12.AutoSize = $true
$chkPerformance12.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance12)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance12; Func = { Log "Applied: Disable hibernation" } }

$chkPerformance13 = New-Object System.Windows.Forms.CheckBox
$chkPerformance13.Text = "Disable background apps"
$chkPerformance13.Location = New-Object System.Drawing.Point(10, 360)
$chkPerformance13.AutoSize = $true
$chkPerformance13.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance13)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance13; Func = { Log "Applied: Disable background apps" } }

$chkPerformance14 = New-Object System.Windows.Forms.CheckBox
$chkPerformance14.Text = "Remove unwanted startup apps"
$chkPerformance14.Location = New-Object System.Drawing.Point(10, 390)
$chkPerformance14.AutoSize = $true
$chkPerformance14.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance14)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance14; Func = { Log "Applied: Remove unwanted startup apps" } }

$chkPerformance15 = New-Object System.Windows.Forms.CheckBox
$chkPerformance15.Text = "Disable scheduled defrag on SSD"
$chkPerformance15.Location = New-Object System.Drawing.Point(10, 420)
$chkPerformance15.AutoSize = $true
$chkPerformance15.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance15)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance15; Func = { Log "Applied: Disable scheduled defrag on SSD" } }

$chkPerformance16 = New-Object System.Windows.Forms.CheckBox
$chkPerformance16.Text = "Set processor scheduling to programs"
$chkPerformance16.Location = New-Object System.Drawing.Point(10, 450)
$chkPerformance16.AutoSize = $true
$chkPerformance16.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance16)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance16; Func = { Log "Applied: Set processor scheduling to programs" } }

$chkPerformance17 = New-Object System.Windows.Forms.CheckBox
$chkPerformance17.Text = "Enable Fast Startup"
$chkPerformance17.Location = New-Object System.Drawing.Point(10, 480)
$chkPerformance17.AutoSize = $true
$chkPerformance17.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance17)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance17; Func = { Log "Applied: Enable Fast Startup" } }

$chkPerformance18 = New-Object System.Windows.Forms.CheckBox
$chkPerformance18.Text = "Disable Windows tips"
$chkPerformance18.Location = New-Object System.Drawing.Point(10, 510)
$chkPerformance18.AutoSize = $true
$chkPerformance18.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance18)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance18; Func = { Log "Applied: Disable Windows tips" } }

$chkPerformance19 = New-Object System.Windows.Forms.CheckBox
$chkPerformance19.Text = "Disable notifications"
$chkPerformance19.Location = New-Object System.Drawing.Point(10, 540)
$chkPerformance19.AutoSize = $true
$chkPerformance19.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance19)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance19; Func = { Log "Applied: Disable notifications" } }

$chkPerformance20 = New-Object System.Windows.Forms.CheckBox
$chkPerformance20.Text = "Set visual effects for best performance"
$chkPerformance20.Location = New-Object System.Drawing.Point(10, 570)
$chkPerformance20.AutoSize = $true
$chkPerformance20.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPerformance.Controls.Add($chkPerformance20)
$categoryCheckboxes["Performance"] += @{ Box = $chkPerformance20; Func = { Log "Applied: Set visual effects for best performance" } }

# ---- Privacy Tab ----

$tabPrivacy = New-Object System.Windows.Forms.TabPage
$tabPrivacy.Text = "Privacy"
$panelPrivacy = New-Object System.Windows.Forms.Panel
$panelPrivacy.Dock = 'Fill'
$panelPrivacy.AutoScroll = $true
$tabPrivacy.Controls.Add($panelPrivacy)
$tabControl.TabPages.Add($tabPrivacy)
$categoryCheckboxes["Privacy"] = @()

$chkPrivacy1 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy1.Text = "Disable telemetry"
$chkPrivacy1.Location = New-Object System.Drawing.Point(10, 0)
$chkPrivacy1.AutoSize = $true
$chkPrivacy1.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy1)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy1; Func = { Log "Applied: Disable telemetry" } }

$chkPrivacy2 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy2.Text = "Turn off location services"
$chkPrivacy2.Location = New-Object System.Drawing.Point(10, 30)
$chkPrivacy2.AutoSize = $true
$chkPrivacy2.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy2)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy2; Func = { Log "Applied: Turn off location services" } }

$chkPrivacy3 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy3.Text = "Disable advertising ID"
$chkPrivacy3.Location = New-Object System.Drawing.Point(10, 60)
$chkPrivacy3.AutoSize = $true
$chkPrivacy3.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy3)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy3; Func = { Log "Applied: Disable advertising ID" } }

$chkPrivacy4 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy4.Text = "Disable feedback frequency"
$chkPrivacy4.Location = New-Object System.Drawing.Point(10, 90)
$chkPrivacy4.AutoSize = $true
$chkPrivacy4.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy4)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy4; Func = { Log "Applied: Disable feedback frequency" } }

$chkPrivacy5 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy5.Text = "Disable app access to camera"
$chkPrivacy5.Location = New-Object System.Drawing.Point(10, 120)
$chkPrivacy5.AutoSize = $true
$chkPrivacy5.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy5)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy5; Func = { Log "Applied: Disable app access to camera" } }

$chkPrivacy6 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy6.Text = "Disable app access to microphone"
$chkPrivacy6.Location = New-Object System.Drawing.Point(10, 150)
$chkPrivacy6.AutoSize = $true
$chkPrivacy6.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy6)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy6; Func = { Log "Applied: Disable app access to microphone" } }

$chkPrivacy7 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy7.Text = "Disable app access to contacts"
$chkPrivacy7.Location = New-Object System.Drawing.Point(10, 180)
$chkPrivacy7.AutoSize = $true
$chkPrivacy7.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy7)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy7; Func = { Log "Applied: Disable app access to contacts" } }

$chkPrivacy8 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy8.Text = "Disable app access to calendar"
$chkPrivacy8.Location = New-Object System.Drawing.Point(10, 210)
$chkPrivacy8.AutoSize = $true
$chkPrivacy8.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy8)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy8; Func = { Log "Applied: Disable app access to calendar" } }

$chkPrivacy9 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy9.Text = "Disable app access to messaging"
$chkPrivacy9.Location = New-Object System.Drawing.Point(10, 240)
$chkPrivacy9.AutoSize = $true
$chkPrivacy9.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy9)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy9; Func = { Log "Applied: Disable app access to messaging" } }

$chkPrivacy10 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy10.Text = "Disable app access to radios"
$chkPrivacy10.Location = New-Object System.Drawing.Point(10, 270)
$chkPrivacy10.AutoSize = $true
$chkPrivacy10.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy10)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy10; Func = { Log "Applied: Disable app access to radios" } }

$chkPrivacy11 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy11.Text = "Disable diagnostic data submission"
$chkPrivacy11.Location = New-Object System.Drawing.Point(10, 300)
$chkPrivacy11.AutoSize = $true
$chkPrivacy11.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy11)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy11; Func = { Log "Applied: Disable diagnostic data submission" } }

$chkPrivacy12 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy12.Text = "Disable Windows Spotlight"
$chkPrivacy12.Location = New-Object System.Drawing.Point(10, 330)
$chkPrivacy12.AutoSize = $true
$chkPrivacy12.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy12)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy12; Func = { Log "Applied: Disable Windows Spotlight" } }

$chkPrivacy13 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy13.Text = "Disable Cortana"
$chkPrivacy13.Location = New-Object System.Drawing.Point(10, 360)
$chkPrivacy13.AutoSize = $true
$chkPrivacy13.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy13)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy13; Func = { Log "Applied: Disable Cortana" } }

$chkPrivacy14 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy14.Text = "Disable cloud clipboard"
$chkPrivacy14.Location = New-Object System.Drawing.Point(10, 390)
$chkPrivacy14.AutoSize = $true
$chkPrivacy14.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy14)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy14; Func = { Log "Applied: Disable cloud clipboard" } }

$chkPrivacy15 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy15.Text = "Disable automatic driver updates"
$chkPrivacy15.Location = New-Object System.Drawing.Point(10, 420)
$chkPrivacy15.AutoSize = $true
$chkPrivacy15.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy15)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy15; Func = { Log "Applied: Disable automatic driver updates" } }

$chkPrivacy16 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy16.Text = "Disable online speech recognition"
$chkPrivacy16.Location = New-Object System.Drawing.Point(10, 450)
$chkPrivacy16.AutoSize = $true
$chkPrivacy16.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy16)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy16; Func = { Log "Applied: Disable online speech recognition" } }

$chkPrivacy17 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy17.Text = "Disable location tracking for apps"
$chkPrivacy17.Location = New-Object System.Drawing.Point(10, 480)
$chkPrivacy17.AutoSize = $true
$chkPrivacy17.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy17)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy17; Func = { Log "Applied: Disable location tracking for apps" } }

$chkPrivacy18 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy18.Text = "Disable syncing of settings"
$chkPrivacy18.Location = New-Object System.Drawing.Point(10, 510)
$chkPrivacy18.AutoSize = $true
$chkPrivacy18.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy18)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy18; Func = { Log "Applied: Disable syncing of settings" } }

$chkPrivacy19 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy19.Text = "Disable Cortana cloud search"
$chkPrivacy19.Location = New-Object System.Drawing.Point(10, 540)
$chkPrivacy19.AutoSize = $true
$chkPrivacy19.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy19)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy19; Func = { Log "Applied: Disable Cortana cloud search" } }

$chkPrivacy20 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy20.Text = "Disable diagnostic tracking for apps"
$chkPrivacy20.Location = New-Object System.Drawing.Point(10, 570)
$chkPrivacy20.AutoSize = $true
$chkPrivacy20.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy20)
$categoryCheckboxes["Privacy"] += @{ Box = $chkPrivacy20; Func = { Log "Applied: Disable diagnostic tracking for apps" } }

# ---- Network Tab ----

$tabNetwork = New-Object System.Windows.Forms.TabPage
$tabNetwork.Text = "Network"
$panelNetwork = New-Object System.Windows.Forms.Panel
$panelNetwork.Dock = 'Fill'
$panelNetwork.AutoScroll = $true
$tabNetwork.Controls.Add($panelNetwork)
$tabControl.TabPages.Add($tabNetwork)
$categoryCheckboxes["Network"] = @()

$chkNetwork1 = New-Object System.Windows.Forms.CheckBox
$chkNetwork1.Text = "Disable SMBv1 protocol"
$chkNetwork1.Location = New-Object System.Drawing.Point(10, 0)
$chkNetwork1.AutoSize = $true
$chkNetwork1.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork1)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork1; Func = { Log "Applied: Disable SMBv1 protocol" } }

$chkNetwork2 = New-Object System.Windows.Forms.CheckBox
$chkNetwork2.Text = "Enable TCP/IP autotuning"
$chkNetwork2.Location = New-Object System.Drawing.Point(10, 30)
$chkNetwork2.AutoSize = $true
$chkNetwork2.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork2)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork2; Func = { Log "Applied: Enable TCP/IP autotuning" } }

$chkNetwork3 = New-Object System.Windows.Forms.CheckBox
$chkNetwork3.Text = "Disable Windows Remote Management"
$chkNetwork3.Location = New-Object System.Drawing.Point(10, 60)
$chkNetwork3.AutoSize = $true
$chkNetwork3.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork3)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork3; Func = { Log "Applied: Disable Windows Remote Management" } }

$chkNetwork4 = New-Object System.Windows.Forms.CheckBox
$chkNetwork4.Text = "Disable NetBIOS over TCP/IP"
$chkNetwork4.Location = New-Object System.Drawing.Point(10, 90)
$chkNetwork4.AutoSize = $true
$chkNetwork4.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork4)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork4; Func = { Log "Applied: Disable NetBIOS over TCP/IP" } }

$chkNetwork5 = New-Object System.Windows.Forms.CheckBox
$chkNetwork5.Text = "Disable IPv6 (optional)"
$chkNetwork5.Location = New-Object System.Drawing.Point(10, 120)
$chkNetwork5.AutoSize = $true
$chkNetwork5.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork5)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork5; Func = { Log "Applied: Disable IPv6 (optional)" } }

$chkNetwork6 = New-Object System.Windows.Forms.CheckBox
$chkNetwork6.Text = "Disable Windows Defender Firewall notifications"
$chkNetwork6.Location = New-Object System.Drawing.Point(10, 150)
$chkNetwork6.AutoSize = $true
$chkNetwork6.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork6)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork6; Func = { Log "Applied: Disable Windows Defender Firewall notifications" } }

$chkNetwork7 = New-Object System.Windows.Forms.CheckBox
$chkNetwork7.Text = "Enable DNS cache"
$chkNetwork7.Location = New-Object System.Drawing.Point(10, 180)
$chkNetwork7.AutoSize = $true
$chkNetwork7.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork7)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork7; Func = { Log "Applied: Enable DNS cache" } }

$chkNetwork8 = New-Object System.Windows.Forms.CheckBox
$chkNetwork8.Text = "Disable peer-to-peer updates"
$chkNetwork8.Location = New-Object System.Drawing.Point(10, 210)
$chkNetwork8.AutoSize = $true
$chkNetwork8.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork8)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork8; Func = { Log "Applied: Disable peer-to-peer updates" } }

$chkNetwork9 = New-Object System.Windows.Forms.CheckBox
$chkNetwork9.Text = "Disable Wi-Fi Sense"
$chkNetwork9.Location = New-Object System.Drawing.Point(10, 240)
$chkNetwork9.AutoSize = $true
$chkNetwork9.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork9)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork9; Func = { Log "Applied: Disable Wi-Fi Sense" } }

$chkNetwork10 = New-Object System.Windows.Forms.CheckBox
$chkNetwork10.Text = "Disable network throttling index"
$chkNetwork10.Location = New-Object System.Drawing.Point(10, 270)
$chkNetwork10.AutoSize = $true
$chkNetwork10.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork10)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork10; Func = { Log "Applied: Disable network throttling index" } }

$chkNetwork11 = New-Object System.Windows.Forms.CheckBox
$chkNetwork11.Text = "Enable large send offload"
$chkNetwork11.Location = New-Object System.Drawing.Point(10, 300)
$chkNetwork11.AutoSize = $true
$chkNetwork11.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork11)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork11; Func = { Log "Applied: Enable large send offload" } }

$chkNetwork12 = New-Object System.Windows.Forms.CheckBox
$chkNetwork12.Text = "Disable Windows Update Delivery Optimization"
$chkNetwork12.Location = New-Object System.Drawing.Point(10, 330)
$chkNetwork12.AutoSize = $true
$chkNetwork12.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork12)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork12; Func = { Log "Applied: Disable Windows Update Delivery Optimization" } }

$chkNetwork13 = New-Object System.Windows.Forms.CheckBox
$chkNetwork13.Text = "Disable Network Location Awareness"
$chkNetwork13.Location = New-Object System.Drawing.Point(10, 360)
$chkNetwork13.AutoSize = $true
$chkNetwork13.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork13)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork13; Func = { Log "Applied: Disable Network Location Awareness" } }

$chkNetwork14 = New-Object System.Windows.Forms.CheckBox
$chkNetwork14.Text = "Disable Windows Network Diagnostics"
$chkNetwork14.Location = New-Object System.Drawing.Point(10, 390)
$chkNetwork14.AutoSize = $true
$chkNetwork14.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork14)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork14; Func = { Log "Applied: Disable Windows Network Diagnostics" } }

$chkNetwork15 = New-Object System.Windows.Forms.CheckBox
$chkNetwork15.Text = "Disable UPnP"
$chkNetwork15.Location = New-Object System.Drawing.Point(10, 420)
$chkNetwork15.AutoSize = $true
$chkNetwork15.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork15)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork15; Func = { Log "Applied: Disable UPnP" } }

$chkNetwork16 = New-Object System.Windows.Forms.CheckBox
$chkNetwork16.Text = "Disable Windows Connect Now"
$chkNetwork16.Location = New-Object System.Drawing.Point(10, 450)
$chkNetwork16.AutoSize = $true
$chkNetwork16.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork16)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork16; Func = { Log "Applied: Disable Windows Connect Now" } }

$chkNetwork17 = New-Object System.Windows.Forms.CheckBox
$chkNetwork17.Text = "Disable Bluetooth Support Service"
$chkNetwork17.Location = New-Object System.Drawing.Point(10, 480)
$chkNetwork17.AutoSize = $true
$chkNetwork17.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork17)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork17; Func = { Log "Applied: Disable Bluetooth Support Service" } }

$chkNetwork18 = New-Object System.Windows.Forms.CheckBox
$chkNetwork18.Text = "Disable Network List Service"
$chkNetwork18.Location = New-Object System.Drawing.Point(10, 510)
$chkNetwork18.AutoSize = $true
$chkNetwork18.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork18)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork18; Func = { Log "Applied: Disable Network List Service" } }

$chkNetwork19 = New-Object System.Windows.Forms.CheckBox
$chkNetwork19.Text = "Disable SSDP Discovery"
$chkNetwork19.Location = New-Object System.Drawing.Point(10, 540)
$chkNetwork19.AutoSize = $true
$chkNetwork19.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork19)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork19; Func = { Log "Applied: Disable SSDP Discovery" } }

$chkNetwork20 = New-Object System.Windows.Forms.CheckBox
$chkNetwork20.Text = "Disable Network Connection Status Indicator"
$chkNetwork20.Location = New-Object System.Drawing.Point(10, 570)
$chkNetwork20.AutoSize = $true
$chkNetwork20.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNetwork20)
$categoryCheckboxes["Network"] += @{ Box = $chkNetwork20; Func = { Log "Applied: Disable Network Connection Status Indicator" } }

# ---- System Services Tab ----

$tabServices = New-Object System.Windows.Forms.TabPage
$tabServices.Text = "System Services"
$panelServices = New-Object System.Windows.Forms.Panel
$panelServices.Dock = 'Fill'
$panelServices.AutoScroll = $true
$tabServices.Controls.Add($panelServices)
$tabControl.TabPages.Add($tabServices)
$categoryCheckboxes["SystemServices"] = @()

$chkService1 = New-Object System.Windows.Forms.CheckBox
$chkService1.Text = "Disable Windows Update Service"
$chkService1.Location = New-Object System.Drawing.Point(10, 0)
$chkService1.AutoSize = $true
$chkService1.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService1)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService1; Func = { Log "Applied: Disabled Windows Update Service" } }

$chkService2 = New-Object System.Windows.Forms.CheckBox
$chkService2.Text = "Disable Superfetch (SysMain)"
$chkService2.Location = New-Object System.Drawing.Point(10, 30)
$chkService2.AutoSize = $true
$chkService2.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService2)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService2; Func = { Log "Applied: Disabled Superfetch (SysMain)" } }

$chkService3 = New-Object System.Windows.Forms.CheckBox
$chkService3.Text = "Disable Windows Search"
$chkService3.Location = New-Object System.Drawing.Point(10, 60)
$chkService3.AutoSize = $true
$chkService3.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService3)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService3; Func = { Log "Applied: Disabled Windows Search" } }

$chkService4 = New-Object System.Windows.Forms.CheckBox
$chkService4.Text = "Disable Print Spooler (if no printers)"
$chkService4.Location = New-Object System.Drawing.Point(10, 90)
$chkService4.AutoSize = $true
$chkService4.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService4)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService4; Func = { Log "Applied: Disabled Print Spooler" } }

$chkService5 = New-Object System.Windows.Forms.CheckBox
$chkService5.Text = "Disable Windows Error Reporting Service"
$chkService5.Location = New-Object System.Drawing.Point(10, 120)
$chkService5.AutoSize = $true
$chkService5.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService5)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService5; Func = { Log "Applied: Disabled Windows Error Reporting Service" } }

$chkService6 = New-Object System.Windows.Forms.CheckBox
$chkService6.Text = "Disable Remote Registry Service"
$chkService6.Location = New-Object System.Drawing.Point(10, 150)
$chkService6.AutoSize = $true
$chkService6.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService6)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService6; Func = { Log "Applied: Disabled Remote Registry Service" } }

$chkService7 = New-Object System.Windows.Forms.CheckBox
$chkService7.Text = "Disable Windows Defender Antivirus Service"
$chkService7.Location = New-Object System.Drawing.Point(10, 180)
$chkService7.AutoSize = $true
$chkService7.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService7)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService7; Func = { Log "Applied: Disabled Windows Defender Antivirus Service" } }

$chkService8 = New-Object System.Windows.Forms.CheckBox
$chkService8.Text = "Disable Windows Defender Firewall Service"
$chkService8.Location = New-Object System.Drawing.Point(10, 210)
$chkService8.AutoSize = $true
$chkService8.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService8)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService8; Func = { Log "Applied: Disabled Windows Defender Firewall Service" } }

$chkService9 = New-Object System.Windows.Forms.CheckBox
$chkService9.Text = "Disable Background Intelligent Transfer Service (BITS)"
$chkService9.Location = New-Object System.Drawing.Point(10, 240)
$chkService9.AutoSize = $true
$chkService9.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService9)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService9; Func = { Log "Applied: Disabled BITS" } }

$chkService10 = New-Object System.Windows.Forms.CheckBox
$chkService10.Text = "Disable Diagnostic Policy Service"
$chkService10.Location = New-Object System.Drawing.Point(10, 270)
$chkService10.AutoSize = $true
$chkService10.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService10)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService10; Func = { Log "Applied: Disabled Diagnostic Policy Service" } }

$chkService11 = New-Object System.Windows.Forms.CheckBox
$chkService11.Text = "Disable Windows Time Service"
$chkService11.Location = New-Object System.Drawing.Point(10, 300)
$chkService11.AutoSize = $true
$chkService11.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService11)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService11; Func = { Log "Applied: Disabled Windows Time Service" } }

$chkService12 = New-Object System.Windows.Forms.CheckBox
$chkService12.Text = "Disable Windows Event Log Service"
$chkService12.Location = New-Object System.Drawing.Point(10, 330)
$chkService12.AutoSize = $true
$chkService12.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService12)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService12; Func = { Log "Applied: Disabled Windows Event Log Service" } }

$chkService13 = New-Object System.Windows.Forms.CheckBox
$chkService13.Text = "Disable Windows Font Cache Service"
$chkService13.Location = New-Object System.Drawing.Point(10, 360)
$chkService13.AutoSize = $true
$chkService13.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService13)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService13; Func = { Log "Applied: Disabled Windows Font Cache Service" } }

$chkService14 = New-Object System.Windows.Forms.CheckBox
$chkService14.Text = "Disable Windows Image Acquisition (WIA)"
$chkService14.Location = New-Object System.Drawing.Point(10, 390)
$chkService14.AutoSize = $true
$chkService14.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService14)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService14; Func = { Log "Applied: Disabled Windows Image Acquisition (WIA)" } }

$chkService15 = New-Object System.Windows.Forms.CheckBox
$chkService15.Text = "Disable Windows Defender SmartScreen"
$chkService15.Location = New-Object System.Drawing.Point(10, 420)
$chkService15.AutoSize = $true
$chkService15.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService15)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService15; Func = { Log "Applied: Disabled Windows Defender SmartScreen" } }

$chkService16 = New-Object System.Windows.Forms.CheckBox
$chkService16.Text = "Disable Diagnostic Service Host"
$chkService16.Location = New-Object System.Drawing.Point(10, 450)
$chkService16.AutoSize = $true
$chkService16.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService16)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService16; Func = { Log "Applied: Disabled Diagnostic Service Host" } }

$chkService17 = New-Object System.Windows.Forms.CheckBox
$chkService17.Text = "Disable Diagnostic System Host"
$chkService17.Location = New-Object System.Drawing.Point(10, 480)
$chkService17.AutoSize = $true
$chkService17.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService17)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService17; Func = { Log "Applied: Disabled Diagnostic System Host" } }

$chkService18 = New-Object System.Windows.Forms.CheckBox
$chkService18.Text = "Disable Windows Push Notifications System Service"
$chkService18.Location = New-Object System.Drawing.Point(10, 510)
$chkService18.AutoSize = $true
$chkService18.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService18)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService18; Func = { Log "Applied: Disabled Windows Push Notifications System Service" } }

$chkService19 = New-Object System.Windows.Forms.CheckBox
$chkService19.Text = "Disable Windows Update Medic Service"
$chkService19.Location = New-Object System.Drawing.Point(10, 540)
$chkService19.AutoSize = $true
$chkService19.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService19)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService19; Func = { Log "Applied: Disabled Windows Update Medic Service" } }

$chkService20 = New-Object System.Windows.Forms.CheckBox
$chkService20.Text = "Disable Xbox Live Services"
$chkService20.Location = New-Object System.Drawing.Point(10, 570)
$chkService20.AutoSize = $true
$chkService20.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkService20)
$categoryCheckboxes["SystemServices"] += @{ Box = $chkService20; Func = { Log "Applied: Disabled Xbox Live Services" } }

# ---- Privacy & Telemetry Tab ----

$tabPrivacy = New-Object System.Windows.Forms.TabPage
$tabPrivacy.Text = "Privacy & Telemetry"
$panelPrivacy = New-Object System.Windows.Forms.Panel
$panelPrivacy.Dock = 'Fill'
$panelPrivacy.AutoScroll = $true
$tabPrivacy.Controls.Add($panelPrivacy)
$tabControl.TabPages.Add($tabPrivacy)
$categoryCheckboxes["PrivacyTelemetry"] = @()

$chkPrivacy1 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy1.Text = "Disable Telemetry (Set AllowTelemetry to 0)"
$chkPrivacy1.Location = New-Object System.Drawing.Point(10, 0)
$chkPrivacy1.AutoSize = $true
$chkPrivacy1.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy1)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy1; Func = {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name AllowTelemetry -Value 0 -Force
    Log "Applied: Disabled Telemetry (AllowTelemetry=0)"
} }

$chkPrivacy2 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy2.Text = "Disable Feedback Notifications"
$chkPrivacy2.Location = New-Object System.Drawing.Point(10, 30)
$chkPrivacy2.AutoSize = $true
$chkPrivacy2.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy2)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy2; Func = {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -Value 0 -Force
    Log "Applied: Disabled Feedback Notifications"
} }

$chkPrivacy3 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy3.Text = "Disable Cortana"
$chkPrivacy3.Location = New-Object System.Drawing.Point(10, 60)
$chkPrivacy3.AutoSize = $true
$chkPrivacy3.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy3)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy3; Func = {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Value 0 -Force
    Log "Applied: Disabled Cortana"
} }

$chkPrivacy4 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy4.Text = "Disable Location Tracking"
$chkPrivacy4.Location = New-Object System.Drawing.Point(10, 90)
$chkPrivacy4.AutoSize = $true
$chkPrivacy4.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy4)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy4; Func = {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" -Name "DisableLocation" -Value 1 -Force
    Log "Applied: Disabled Location Tracking"
} }

$chkPrivacy5 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy5.Text = "Disable Advertising ID"
$chkPrivacy5.Location = New-Object System.Drawing.Point(10, 120)
$chkPrivacy5.AutoSize = $true
$chkPrivacy5.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy5)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy5; Func = {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" -Name "Enabled" -Value 0 -Force
    Log "Applied: Disabled Advertising ID"
} }

$chkPrivacy6 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy6.Text = "Disable Sync Settings"
$chkPrivacy6.Location = New-Object System.Drawing.Point(10, 150)
$chkPrivacy6.AutoSize = $true
$chkPrivacy6.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy6)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy6; Func = {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\SyncSettings" -Name "SyncPolicy" -Value 0 -Force
    Log "Applied: Disabled Sync Settings"
} }

$chkPrivacy7 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy7.Text = "Disable Diagnostic Data Submission"
$chkPrivacy7.Location = New-Object System.Drawing.Point(10, 180)
$chkPrivacy7.AutoSize = $true
$chkPrivacy7.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy7)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy7; Func = {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "MaxTelemetryAllowed" -Value 0 -Force
    Log "Applied: Disabled Diagnostic Data Submission"
} }

$chkPrivacy8 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy8.Text = "Disable Microsoft Consumer Experience"
$chkPrivacy8.Location = New-Object System.Drawing.Point(10, 210)
$chkPrivacy8.AutoSize = $true
$chkPrivacy8.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy8)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy8; Func = {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableSoftLanding" -Value 1 -Force
    Log "Applied: Disabled Microsoft Consumer Experience"
} }

$chkPrivacy9 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy9.Text = "Disable App Notifications"
$chkPrivacy9.Location = New-Object System.Drawing.Point(10, 240)
$chkPrivacy9.AutoSize = $true
$chkPrivacy9.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy9)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy9; Func = {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\PushNotifications" -Name "ToastEnabled" -Value 0 -Force
    Log "Applied: Disabled App Notifications"
} }

$chkPrivacy10 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy10.Text = "Disable Feedback Hub"
$chkPrivacy10.Location = New-Object System.Drawing.Point(10, 270)
$chkPrivacy10.AutoSize = $true
$chkPrivacy10.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy10)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy10; Func = {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -Value 0 -Force
    Log "Applied: Disabled Feedback Hub"
} }

$chkPrivacy11 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy11.Text = "Disable Background Apps"
$chkPrivacy11.Location = New-Object System.Drawing.Point(10, 300)
$chkPrivacy11.AutoSize = $true
$chkPrivacy11.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy11)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy11; Func = {
    $appsKey = "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications"
    if (Test-Path $appsKey) {
        Get-ItemProperty -Path $appsKey | ForEach-Object {
            $_.PSObject.Properties | ForEach-Object {
                if ($_.Name -notmatch "^(PSPath|PSParentPath|PSChildName|PSDrive|PSProvider)$") {
                    Remove-ItemProperty -Path $appsKey -Name $_.Name -ErrorAction SilentlyContinue
                }
            }
        }
    }
    Log "Applied: Disabled Background Apps"
} }

$chkPrivacy12 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy12.Text = "Disable App Access to Camera"
$chkPrivacy12.Location = New-Object System.Drawing.Point(10, 330)
$chkPrivacy12.AutoSize = $true
$chkPrivacy12.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy12)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy12; Func = {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" -Name "Value" -Value "Deny" -Force
    Log "Applied: Disabled App Access to Camera"
} }

$chkPrivacy13 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy13.Text = "Disable App Access to Microphone"
$chkPrivacy13.Location = New-Object System.Drawing.Point(10, 360)
$chkPrivacy13.AutoSize = $true
$chkPrivacy13.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy13)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy13; Func = {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" -Name "Value" -Value "Deny" -Force
    Log "Applied: Disabled App Access to Microphone"
} }

$chkPrivacy14 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy14.Text = "Disable Windows Spotlight"
$chkPrivacy14.Location = New-Object System.Drawing.Point(10, 390)
$chkPrivacy14.AutoSize = $true
$chkPrivacy14.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy14)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy14; Func = {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "RotatingLockScreenEnabled" -Value 0 -Force
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Value 0 -Force
    Log "Applied: Disabled Windows Spotlight"
} }

$chkPrivacy15 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy15.Text = "Disable Xbox Telemetry"
$chkPrivacy15.Location = New-Object System.Drawing.Point(10, 420)
$chkPrivacy15.AutoSize = $true
$chkPrivacy15.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy15)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy15; Func = {
    Remove-Item -Path "HKCU:\Software\Microsoft\Xbox" -Recurse -ErrorAction SilentlyContinue
    Log "Applied: Disabled Xbox Telemetry"
} }

$chkPrivacy16 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy16.Text = "Disable Windows Tips"
$chkPrivacy16.Location = New-Object System.Drawing.Point(10, 450)
$chkPrivacy16.AutoSize = $true
$chkPrivacy16.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy16)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy16; Func = {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Value 0 -Force
    Log "Applied: Disabled Windows Tips"
} }

$chkPrivacy17 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy17.Text = "Disable Location Services"
$chkPrivacy17.Location = New-Object System.Drawing.Point(10, 480)
$chkPrivacy17.AutoSize = $true
$chkPrivacy17.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy17)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy17; Func = {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions" -Name "SensorPermissionState" -Value 0 -Force
    Log "Applied: Disabled Location Services"
} }

$chkPrivacy18 = New-Object System.Windows.Forms.CheckBox
$chkPrivacy18.Text = "Disable OneDrive"
$chkPrivacy18.Location = New-Object System.Drawing.Point(10, 510)
$chkPrivacy18.AutoSize = $true
$chkPrivacy18.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chkPrivacy18)
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chkPrivacy18; Func = {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSyncNGSC" -Value 1 -Force
    Stop-Process -Name OneDrive -Force -ErrorAction SilentlyContinue
    Log "Applied: Disabled OneDrive"
} }

# One setting to disable all telemetry scheduled tasks
$telemetryTasks = @(
    "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser",
    "Microsoft\Windows\Application Experience\ProgramDataUpdater",
    "Microsoft\Windows\Autochk\Proxy",
    "Microsoft\Windows\Customer Experience Improvement Program\Consolidator",
    "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask",
    "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip",
    "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector",
    "Microsoft\Windows\Maintenance\WinSAT",
    "Microsoft\Windows\Media Center\ActivateWindowsSearch",
    "Microsoft\Windows\Media Center\ConfigureInternetTimeService",
    "Microsoft\Windows\Media Center\DispatchRecoveryTasks",
    "Microsoft\Windows\Media Center\ehDRMInit",
    "Microsoft\Windows\Media Center\InstallPlayReady",
    "Microsoft\Windows\Media Center\mcupdate",
    "Microsoft\Windows\Media Center\MediaCenterRecoveryTask",
    "Microsoft\Windows\Media Center\ObjectStoreRecoveryTask",
    "Microsoft\Windows\Media Center\OCURActivate",
    "Microsoft\Windows\Media Center\OCURDiscovery",
    "Microsoft\Windows\Media Center\PBDADiscovery",
    "Microsoft\Windows\Media Center\RegisterSearch",
    "Microsoft\Windows\Media Center\ReindexSearchRoot",
    "Microsoft\Windows\Media Center\SqlLiteRecoveryTask",
    "Microsoft\Windows\Media Center\UpdateRecordPath",
    "Microsoft\Windows\PI\Sqm-Tasks",
    "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem",
    "Microsoft\Windows\Shell\FamilySafetyMonitor",
    "Microsoft\Windows\Shell\FamilySafetyRefresh",
    "Microsoft\Windows\WDI\ResolutionHost"
)

# Create one checkbox for all telemetry tasks
$chk = New-Object System.Windows.Forms.CheckBox
$chk.Text = "Disable All Telemetry Scheduled Tasks"
$chk.Location = New-Object System.Drawing.Point(10, ($panelPrivacy.Controls.Count * 30))
$chk.AutoSize = $true
$chk.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelPrivacy.Controls.Add($chk)

# Add checkbox logic under single category setting
$categoryCheckboxes["PrivacyTelemetry"] += @{ Box = $chk; Func = {
    foreach ($task in $telemetryTasks) {
        $taskName = $task.Split('\')[-1]
        $taskPath = "\" + ($task -replace '\\[^\\]+$','') + "\"
        if (Get-ScheduledTask -TaskName $taskName -TaskPath $taskPath -ErrorAction SilentlyContinue) {
            Disable-ScheduledTask -TaskName $taskName -TaskPath $taskPath
            Log "Applied: Disabled scheduled task $task"
        }
    }
} }


# ---- System Services & Startup Tab ----

$tabServices = New-Object System.Windows.Forms.TabPage
$tabServices.Text = "Services & Startup"
$panelServices = New-Object System.Windows.Forms.Panel
$panelServices.Dock = 'Fill'
$panelServices.AutoScroll = $true
$tabServices.Controls.Add($panelServices)
$tabControl.TabPages.Add($tabServices)
$categoryCheckboxes["ServicesStartup"] = @()

$chkServices1 = New-Object System.Windows.Forms.CheckBox
$chkServices1.Text = "Disable Windows Update Service"
$chkServices1.Location = New-Object System.Drawing.Point(10, 0)
$chkServices1.AutoSize = $true
$chkServices1.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices1)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices1; Func = {
    Set-Service -Name "wuauserv" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "wuauserv" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Windows Update Service"
} }

$chkServices2 = New-Object System.Windows.Forms.CheckBox
$chkServices2.Text = "Disable Windows Search Service"
$chkServices2.Location = New-Object System.Drawing.Point(10, 30)
$chkServices2.AutoSize = $true
$chkServices2.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices2)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices2; Func = {
    Set-Service -Name "WSearch" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "WSearch" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Windows Search Service"
} }

$chkServices3 = New-Object System.Windows.Forms.CheckBox
$chkServices3.Text = "Disable Superfetch (SysMain)"
$chkServices3.Location = New-Object System.Drawing.Point(10, 60)
$chkServices3.AutoSize = $true
$chkServices3.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices3)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices3; Func = {
    Set-Service -Name "SysMain" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "SysMain" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Superfetch (SysMain)"
} }

$chkServices4 = New-Object System.Windows.Forms.CheckBox
$chkServices4.Text = "Disable Remote Registry Service"
$chkServices4.Location = New-Object System.Drawing.Point(10, 90)
$chkServices4.AutoSize = $true
$chkServices4.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices4)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices4; Func = {
    Set-Service -Name "RemoteRegistry" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "RemoteRegistry" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Remote Registry Service"
} }

$chkServices5 = New-Object System.Windows.Forms.CheckBox
$chkServices5.Text = "Disable Windows Error Reporting Service"
$chkServices5.Location = New-Object System.Drawing.Point(10, 120)
$chkServices5.AutoSize = $true
$chkServices5.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices5)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices5; Func = {
    Set-Service -Name "WerSvc" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "WerSvc" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Windows Error Reporting Service"
} }

$chkServices6 = New-Object System.Windows.Forms.CheckBox
$chkServices6.Text = "Disable Windows Defender Service"
$chkServices6.Location = New-Object System.Drawing.Point(10, 150)
$chkServices6.AutoSize = $true
$chkServices6.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices6)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices6; Func = {
    Set-Service -Name "WinDefend" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "WinDefend" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Windows Defender Service"
} }

$chkServices7 = New-Object System.Windows.Forms.CheckBox
$chkServices7.Text = "Disable Windows Biometric Service"
$chkServices7.Location = New-Object System.Drawing.Point(10, 180)
$chkServices7.AutoSize = $true
$chkServices7.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices7)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices7; Func = {
    Set-Service -Name "WbioSrvc" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "WbioSrvc" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Windows Biometric Service"
} }

$chkServices8 = New-Object System.Windows.Forms.CheckBox
$chkServices8.Text = "Disable Bluetooth Support Service"
$chkServices8.Location = New-Object System.Drawing.Point(10, 210)
$chkServices8.AutoSize = $true
$chkServices8.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices8)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices8; Func = {
    Set-Service -Name "bthserv" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "bthserv" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Bluetooth Support Service"
} }

$chkServices9 = New-Object System.Windows.Forms.CheckBox
$chkServices9.Text = "Disable Windows Image Acquisition Service"
$chkServices9.Location = New-Object System.Drawing.Point(10, 240)
$chkServices9.AutoSize = $true
$chkServices9.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices9)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices9; Func = {
    Set-Service -Name "stisvc" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "stisvc" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Windows Image Acquisition Service"
} }

$chkServices10 = New-Object System.Windows.Forms.CheckBox
$chkServices10.Text = "Disable Windows Update Medic Service"
$chkServices10.Location = New-Object System.Drawing.Point(10, 270)
$chkServices10.AutoSize = $true
$chkServices10.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices10)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices10; Func = {
    # This service is protected, requires advanced method to disable
    sc.exe config "WaaSMedicSvc" start= disabled | Out-Null
    Stop-Service -Name "WaaSMedicSvc" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Windows Update Medic Service"
} }

$chkServices11 = New-Object System.Windows.Forms.CheckBox
$chkServices11.Text = "Disable Diagnostic Policy Service"
$chkServices11.Location = New-Object System.Drawing.Point(10, 300)
$chkServices11.AutoSize = $true
$chkServices11.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices11)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices11; Func = {
    Set-Service -Name "DPS" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "DPS" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Diagnostic Policy Service"
} }

$chkServices12 = New-Object System.Windows.Forms.CheckBox
$chkServices12.Text = "Disable Windows Time Service"
$chkServices12.Location = New-Object System.Drawing.Point(10, 330)
$chkServices12.AutoSize = $true
$chkServices12.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices12)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices12; Func = {
    Set-Service -Name "W32Time" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "W32Time" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Windows Time Service"
} }

$chkServices13 = New-Object System.Windows.Forms.CheckBox
$chkServices13.Text = "Disable Remote Desktop Services"
$chkServices13.Location = New-Object System.Drawing.Point(10, 360)
$chkServices13.AutoSize = $true
$chkServices13.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices13)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices13; Func = {
    Set-Service -Name "TermService" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "TermService" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Remote Desktop Services"
} }

$chkServices14 = New-Object System.Windows.Forms.CheckBox
$chkServices14.Text = "Disable Windows Event Log Service"
$chkServices14.Location = New-Object System.Drawing.Point(10, 390)
$chkServices14.AutoSize = $true
$chkServices14.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices14)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices14; Func = {
    Set-Service -Name "EventLog" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "EventLog" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Windows Event Log Service"
} }

$chkServices15 = New-Object System.Windows.Forms.CheckBox
$chkServices15.Text = "Disable Print Spooler Service"
$chkServices15.Location = New-Object System.Drawing.Point(10, 420)
$chkServices15.AutoSize = $true
$chkServices15.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices15)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices15; Func = {
    Set-Service -Name "Spooler" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "Spooler" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Print Spooler Service"
} }

$chkServices16 = New-Object System.Windows.Forms.CheckBox
$chkServices16.Text = "Disable Windows Firewall Service"
$chkServices16.Location = New-Object System.Drawing.Point(10, 450)
$chkServices16.AutoSize = $true
$chkServices16.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices16)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices16; Func = {
    Set-Service -Name "MpsSvc" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "MpsSvc" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Windows Firewall Service"
} }

$chkServices17 = New-Object System.Windows.Forms.CheckBox
$chkServices17.Text = "Disable IP Helper Service"
$chkServices17.Location = New-Object System.Drawing.Point(10, 480)
$chkServices17.AutoSize = $true
$chkServices17.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices17)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices17; Func = {
    Set-Service -Name "iphlpsvc" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "iphlpsvc" -ErrorAction SilentlyContinue
    Log "Applied: Disabled IP Helper Service"
} }

$chkServices18 = New-Object System.Windows.Forms.CheckBox
$chkServices18.Text = "Disable Windows Push Notifications System Service"
$chkServices18.Location = New-Object System.Drawing.Point(10, 510)
$chkServices18.AutoSize = $true
$chkServices18.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices18)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices18; Func = {
    Set-Service -Name "WpnService" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "WpnService" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Windows Push Notifications System Service"
} }

$chkServices19 = New-Object System.Windows.Forms.CheckBox
$chkServices19.Text = "Disable Connected User Experiences and Telemetry"
$chkServices19.Location = New-Object System.Drawing.Point(10, 540)
$chkServices19.AutoSize = $true
$chkServices19.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices19)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices19; Func = {
    Set-Service -Name "DiagTrack" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "DiagTrack" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Connected User Experiences and Telemetry"
} }

$chkServices20 = New-Object System.Windows.Forms.CheckBox
$chkServices20.Text = "Disable Background Intelligent Transfer Service (BITS)"
$chkServices20.Location = New-Object System.Drawing.Point(10, 570)
$chkServices20.AutoSize = $true
$chkServices20.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkServices20)
$categoryCheckboxes["ServicesStartup"] += @{ Box = $chkServices20; Func = {
    Set-Service -Name "BITS" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "BITS" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Background Intelligent Transfer Service (BITS)"
} }

# ---- Network & Security Tab ----

$tabNetwork = New-Object System.Windows.Forms.TabPage
$tabNetwork.Text = "Network & Security"
$panelNetwork = New-Object System.Windows.Forms.Panel
$panelNetwork.Dock = 'Fill'
$panelNetwork.AutoScroll = $true
$tabNetwork.Controls.Add($panelNetwork)
$tabControl.TabPages.Add($tabNetwork)
$categoryCheckboxes["NetworkSecurity"] = @()

$chkNet1 = New-Object System.Windows.Forms.CheckBox
$chkNet1.Text = "Disable SMBv1 Protocol"
$chkNet1.Location = New-Object System.Drawing.Point(10, 0)
$chkNet1.AutoSize = $true
$chkNet1.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet1)
$categoryCheckboxes["NetworkSecurity"] += @{ Box = $chkNet1; Func = {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "SMB1" -Value 0 -Force -ErrorAction SilentlyContinue
    Log "Applied: Disabled SMBv1 Protocol"
} }

$chkNet2 = New-Object System.Windows.Forms.CheckBox
$chkNet2.Text = "Enable Windows Defender Firewall"
$chkNet2.Location = New-Object System.Drawing.Point(10, 30)
$chkNet2.AutoSize = $true
$chkNet2.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet2)
$categoryCheckboxes["NetworkSecurity"] += @{ Box = $chkNet2; Func = {
    Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True
    Log "Applied: Enabled Windows Defender Firewall"
} }

$chkNet3 = New-Object System.Windows.Forms.CheckBox
$chkNet3.Text = "Disable IPv6 (if not used)"
$chkNet3.Location = New-Object System.Drawing.Point(10, 60)
$chkNet3.AutoSize = $true
$chkNet3.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet3)
$categoryCheckboxes["NetworkSecurity"] += @{ Box = $chkNet3; Func = {
    New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" -Name "DisabledComponents" -Value 0xFF -PropertyType DWord -Force -ErrorAction SilentlyContinue
    Log "Applied: Disabled IPv6"
} }

$chkNet4 = New-Object System.Windows.Forms.CheckBox
$chkNet4.Text = "Disable NetBIOS over TCP/IP"
$chkNet4.Location = New-Object System.Drawing.Point(10, 90)
$chkNet4.AutoSize = $true
$chkNet4.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet4)
$categoryCheckboxes["NetworkSecurity"] += @{ Box = $chkNet4; Func = {
    # Note: Typically set via network adapter settings, but can be forced via registry per adapter
    # This disables NetBIOS globally:
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" -Name "EnableNetbiosOverTcpip" -Value 0 -Force -ErrorAction SilentlyContinue
    Log "Applied: Disabled NetBIOS over TCP/IP"
} }

$chkNet5 = New-Object System.Windows.Forms.CheckBox
$chkNet5.Text = "Disable Windows Remote Management (WinRM)"
$chkNet5.Location = New-Object System.Drawing.Point(10, 120)
$chkNet5.AutoSize = $true
$chkNet5.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet5)
$categoryCheckboxes["NetworkSecurity"] += @{ Box = $chkNet5; Func = {
    Set-Service -Name "WinRM" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "WinRM" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Windows Remote Management (WinRM)"
} }

$chkNet6 = New-Object System.Windows.Forms.CheckBox
$chkNet6.Text = "Disable Network Discovery"
$chkNet6.Location = New-Object System.Drawing.Point(10, 150)
$chkNet6.AutoSize = $true
$chkNet6.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet6)
$categoryCheckboxes["NetworkSecurity"] += @{ Box = $chkNet6; Func = {
    Set-NetFirewallRule -DisplayGroup "Network Discovery" -Enabled False -ErrorAction SilentlyContinue
    Log "Applied: Disabled Network Discovery"
} }

$chkNet7 = New-Object System.Windows.Forms.CheckBox
$chkNet7.Text = "Disable Remote Assistance"
$chkNet7.Location = New-Object System.Drawing.Point(10, 180)
$chkNet7.AutoSize = $true
$chkNet7.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet7)
$categoryCheckboxes["NetworkSecurity"] += @{ Box = $chkNet7; Func = {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Value 0 -Force -ErrorAction SilentlyContinue
    Log "Applied: Disabled Remote Assistance"
} }

$chkNet8 = New-Object System.Windows.Forms.CheckBox
$chkNet8.Text = "Disable UPnP Device Host"
$chkNet8.Location = New-Object System.Drawing.Point(10, 210)
$chkNet8.AutoSize = $true
$chkNet8.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet8)
$categoryCheckboxes["NetworkSecurity"] += @{ Box = $chkNet8; Func = {
    Set-Service -Name "UPnPHost" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "UPnPHost" -ErrorAction SilentlyContinue
    Log "Applied: Disabled UPnP Device Host"
} }

$chkNet9 = New-Object System.Windows.Forms.CheckBox
$chkNet9.Text = "Disable SSDP Discovery"
$chkNet9.Location = New-Object System.Drawing.Point(10, 240)
$chkNet9.AutoSize = $true
$chkNet9.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet9)
$categoryCheckboxes["NetworkSecurity"] += @{ Box = $chkNet9; Func = {
    Set-Service -Name "SSDPSRV" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "SSDPSRV" -ErrorAction SilentlyContinue
    Log "Applied: Disabled SSDP Discovery"
} }

$chkNet10 = New-Object System.Windows.Forms.CheckBox
$chkNet10.Text = "Disable Remote Procedure Call (RPC) Endpoint Mapper"
$chkNet10.Location = New-Object System.Drawing.Point(10, 270)
$chkNet10.AutoSize = $true
$chkNet10.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet10)
$categoryCheckboxes["NetworkSecurity"] += @{ Box = $chkNet10; Func = {
    # WARNING: Disabling RPC can break many system functions - typically not recommended
    Log "Skipped: Disabling RPC Endpoint Mapper due to system risk"
} }

$chkNet11 = New-Object System.Windows.Forms.CheckBox
$chkNet11.Text = "Disable Wi-Fi Sense"
$chkNet11.Location = New-Object System.Drawing.Point(10, 300)
$chkNet11.AutoSize = $true
$chkNet11.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet11)
$categoryCheckboxes["NetworkSecurity"] += @{ Box = $chkNet11; Func = {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Wcmsvc\wifinetworkmanager\wifinetworkmanager" -Name "AutoConnectAllowedOEM" -Value 0 -Force -ErrorAction SilentlyContinue
    Log "Applied: Disabled Wi-Fi Sense"
} }

$chkNet12 = New-Object System.Windows.Forms.CheckBox
$chkNet12.Text = "Disable Peer Name Resolution Protocol"
$chkNet12.Location = New-Object System.Drawing.Point(10, 330)
$chkNet12.AutoSize = $true
$chkNet12.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet12)
$categoryCheckboxes["NetworkSecurity"] += @{ Box = $chkNet12; Func = {
    Set-Service -Name "PNRPsvc" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "PNRPsvc" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Peer Name Resolution Protocol"
} }

$chkNet13 = New-Object System.Windows.Forms.CheckBox
$chkNet13.Text = "Disable Remote Registry"
$chkNet13.Location = New-Object System.Drawing.Point(10, 360)
$chkNet13.AutoSize = $true
$chkNet13.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet13)
$categoryCheckboxes["NetworkSecurity"] += @{ Box = $chkNet13; Func = {
    Set-Service -Name "RemoteRegistry" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "RemoteRegistry" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Remote Registry"
} }

$chkNet14 = New-Object System.Windows.Forms.CheckBox
$chkNet14.Text = "Disable Netlogon"
$chkNet14.Location = New-Object System.Drawing.Point(10, 390)
$chkNet14.AutoSize = $true
$chkNet14.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet14)
$categoryCheckboxes["NetworkSecurity"] += @{ Box = $chkNet14; Func = {
    Set-Service -Name "Netlogon" -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name "Netlogon" -ErrorAction SilentlyContinue
    Log "Applied: Disabled Netlogon"
} }

# Add checkbox to panel
$panelNetwork.Controls.Add($chkNet14)

# Add it to the category with associated action
$categoryCheckboxes["NetworkSecurity"] += @(
    @{
        Box  = $chkNet14
        Func = {
            Set-Service -Name "Netlogon" -StartupType Disabled -ErrorAction SilentlyContinue
            Stop-Service -Name "Netlogon" -ErrorAction SilentlyContinue
            Log "Applied: Disabled Netlogon Service"
        }
    }
)

$chkNet15 = New-Object System.Windows.Forms.CheckBox
$chkNet15.Text = "Disable Windows Update Service"
$chkNet15.Location = New-Object System.Drawing.Point(10, 420)
$chkNet15.AutoSize = $true
$chkNet15.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet15)
$categoryCheckboxes["NetworkSecurity"] += @(
    @{
        Box  = $chkNet15
        Func = {
            Set-Service -Name "wuauserv" -StartupType Disabled -ErrorAction SilentlyContinue
            Stop-Service -Name "wuauserv" -ErrorAction SilentlyContinue
            Log "Applied: Disabled Windows Update Service"
        }
    }
)

$chkNet16 = New-Object System.Windows.Forms.CheckBox
$chkNet16.Text = "Disable Windows Defender Antivirus Service"
$chkNet16.Location = New-Object System.Drawing.Point(10, 450)
$chkNet16.AutoSize = $true
$chkNet16.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet16)
$categoryCheckboxes["NetworkSecurity"] += @(
    @{
        Box  = $chkNet16
        Func = {
            Set-Service -Name "WinDefend" -StartupType Disabled -ErrorAction SilentlyContinue
            Stop-Service -Name "WinDefend" -ErrorAction SilentlyContinue
            Log "Applied: Disabled Windows Defender Antivirus Service"
        }
    }
)

$chkNet17 = New-Object System.Windows.Forms.CheckBox
$chkNet17.Text = "Disable Windows Error Reporting Service"
$chkNet17.Location = New-Object System.Drawing.Point(10, 480)
$chkNet17.AutoSize = $true
$chkNet17.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet17)
$categoryCheckboxes["NetworkSecurity"] += @(
    @{
        Box  = $chkNet17
        Func = {
            Set-Service -Name "WerSvc" -StartupType Disabled -ErrorAction SilentlyContinue
            Stop-Service -Name "WerSvc" -ErrorAction SilentlyContinue
            Log "Applied: Disabled Windows Error Reporting Service"
        }
    }
)

$chkNet18 = New-Object System.Windows.Forms.CheckBox
$chkNet18.Text = "Disable Diagnostic Service Host"
$chkNet18.Location = New-Object System.Drawing.Point(10, 510)
$chkNet18.AutoSize = $true
$chkNet18.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet18)
$categoryCheckboxes["NetworkSecurity"] += @(
    @{
        Box  = $chkNet18
        Func = {
            Set-Service -Name "DiagSvc" -StartupType Disabled -ErrorAction SilentlyContinue
            Stop-Service -Name "DiagSvc" -ErrorAction SilentlyContinue
            Log "Applied: Disabled Diagnostic Service Host"
        }
    }
)

$chkNet19 = New-Object System.Windows.Forms.CheckBox
$chkNet19.Text = "Disable Diagnostic Policy Service"
$chkNet19.Location = New-Object System.Drawing.Point(10, 540)
$chkNet19.AutoSize = $true
$chkNet19.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet19)
$categoryCheckboxes["NetworkSecurity"] += @(
    @{
        Box  = $chkNet19
        Func = {
            Set-Service -Name "DPS" -StartupType Disabled -ErrorAction SilentlyContinue
            Stop-Service -Name "DPS" -ErrorAction SilentlyContinue
            Log "Applied: Disabled Diagnostic Policy Service"
        }
    }
)

$chkNet20 = New-Object System.Windows.Forms.CheckBox
$chkNet20.Text = "Disable Security Center Service"
$chkNet20.Location = New-Object System.Drawing.Point(10, 570)
$chkNet20.AutoSize = $true
$chkNet20.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetwork.Controls.Add($chkNet20)
$categoryCheckboxes["NetworkSecurity"] += @(
    @{
        Box  = $chkNet20
        Func = {
            Set-Service -Name "wscsvc" -StartupType Disabled -ErrorAction SilentlyContinue
            Stop-Service -Name "wscsvc" -ErrorAction SilentlyContinue
            Log "Applied: Disabled Security Center Service"
        }
    }
)

# ---- System Cleanup Tab ----

$tabCleanup = New-Object System.Windows.Forms.TabPage
$tabCleanup.Text = "System Cleanup"
$panelCleanup = New-Object System.Windows.Forms.Panel
$panelCleanup.Dock = 'Fill'
$panelCleanup.AutoScroll = $true
$tabCleanup.Controls.Add($panelCleanup)
$tabControl.TabPages.Add($tabCleanup)
$categoryCheckboxes["SystemCleanup"] = @()

$chkClean1 = New-Object System.Windows.Forms.CheckBox
$chkClean1.Text = "Clear Windows Temp Folder"
$chkClean1.Location = New-Object System.Drawing.Point(10, 0)
$chkClean1.AutoSize = $true
$chkClean1.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean1)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean1; Func = {
    Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
    Log "Cleared Windows Temp Folder"
} }

$chkClean2 = New-Object System.Windows.Forms.CheckBox
$chkClean2.Text = "Clear Internet Explorer Cache"
$chkClean2.Location = New-Object System.Drawing.Point(10, 30)
$chkClean2.AutoSize = $true
$chkClean2.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean2)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean2; Func = {
    RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
    Log "Cleared Internet Explorer Cache"
} }

$chkClean3 = New-Object System.Windows.Forms.CheckBox
$chkClean3.Text = "Clear Microsoft Edge Cache"
$chkClean3.Location = New-Object System.Drawing.Point(10, 60)
$chkClean3.AutoSize = $true
$chkClean3.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean3)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean3; Func = {
    $edgeCachePaths = @(
        "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cache",
        "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Code Cache",
        "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\GPUCache"
    )
    foreach ($path in $edgeCachePaths) {
        if (Test-Path $path) {
            Remove-Item -Path "$path\*" -Recurse -Force -ErrorAction SilentlyContinue
        }
    }
    Log "Cleared Microsoft Edge Cache"
} }

$chkClean4 = New-Object System.Windows.Forms.CheckBox
$chkClean4.Text = "Clear Windows Update Cache"
$chkClean4.Location = New-Object System.Drawing.Point(10, 90)
$chkClean4.AutoSize = $true
$chkClean4.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean4)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean4; Func = {
    Stop-Service wuauserv -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "C:\Windows\SoftwareDistribution\Download\*" -Recurse -Force -ErrorAction SilentlyContinue
    Start-Service wuauserv -ErrorAction SilentlyContinue
    Log "Cleared Windows Update Cache"
} }

$chkClean5 = New-Object System.Windows.Forms.CheckBox
$chkClean5.Text = "Clear System Event Logs"
$chkClean5.Location = New-Object System.Drawing.Point(10, 120)
$chkClean5.AutoSize = $true
$chkClean5.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean5)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean5; Func = {
    Get-EventLog -LogName * | ForEach-Object { Clear-EventLog $_.Log }
    Log "Cleared System Event Logs"
} }

$chkClean6 = New-Object System.Windows.Forms.CheckBox
$chkClean6.Text = "Clear DNS Cache"
$chkClean6.Location = New-Object System.Drawing.Point(10, 150)
$chkClean6.AutoSize = $true
$chkClean6.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean6)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean6; Func = {
    ipconfig /flushdns | Out-Null
    Log "Flushed DNS Cache"
} }

$chkClean7 = New-Object System.Windows.Forms.CheckBox
$chkClean7.Text = "Clear Prefetch Folder"
$chkClean7.Location = New-Object System.Drawing.Point(10, 180)
$chkClean7.AutoSize = $true
$chkClean7.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean7)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean7; Func = {
    Remove-Item -Path "C:\Windows\Prefetch\*" -Recurse -Force -ErrorAction SilentlyContinue
    Log "Cleared Prefetch Folder"
} }

$chkClean8 = New-Object System.Windows.Forms.CheckBox
$chkClean8.Text = "Clear Thumbnail Cache"
$chkClean8.Location = New-Object System.Drawing.Point(10, 210)
$chkClean8.AutoSize = $true
$chkClean8.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean8)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean8; Func = {
    Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Windows\Explorer\thumbcache_*" -Force -ErrorAction SilentlyContinue
    Log "Cleared Thumbnail Cache"
} }

$chkClean9 = New-Object System.Windows.Forms.CheckBox
$chkClean9.Text = "Clear Recent Items List"
$chkClean9.Location = New-Object System.Drawing.Point(10, 240)
$chkClean9.AutoSize = $true
$chkClean9.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean9)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean9; Func = {
    Remove-Item -Path "$env:APPDATA\Microsoft\Windows\Recent\*" -Force -ErrorAction SilentlyContinue
    Log "Cleared Recent Items List"
} }

$chkClean10 = New-Object System.Windows.Forms.CheckBox
$chkClean10.Text = "Clear Windows Error Reporting Files"
$chkClean10.Location = New-Object System.Drawing.Point(10, 270)
$chkClean10.AutoSize = $true
$chkClean10.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean10)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean10; Func = {
    Remove-Item -Path "C:\ProgramData\Microsoft\Windows\WER\ReportQueue\*" -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "C:\ProgramData\Microsoft\Windows\WER\ReportArchive\*" -Recurse -Force -ErrorAction SilentlyContinue
    Log "Cleared Windows Error Reporting Files"
} }

$chkClean11 = New-Object System.Windows.Forms.CheckBox
$chkClean11.Text = "Clear Windows Installer Cache"
$chkClean11.Location = New-Object System.Drawing.Point(10, 300)
$chkClean11.AutoSize = $true
$chkClean11.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean11)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean11; Func = {
    Remove-Item -Path "C:\Windows\Installer\*" -Recurse -Force -ErrorAction SilentlyContinue
    Log "Cleared Windows Installer Cache"
} }

$chkClean12 = New-Object System.Windows.Forms.CheckBox
$chkClean12.Text = "Clear Windows Font Cache"
$chkClean12.Location = New-Object System.Drawing.Point(10, 330)
$chkClean12.AutoSize = $true
$chkClean12.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean12)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean12; Func = {
    Stop-Service -Name "FontCache" -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "$env:LOCALAPPDATA\FontCache\*" -Force -Recurse -ErrorAction SilentlyContinue
    Start-Service -Name "FontCache" -ErrorAction SilentlyContinue
    Log "Cleared Windows Font Cache"
} }

$chkClean13 = New-Object System.Windows.Forms.CheckBox
$chkClean13.Text = "Clear Delivery Optimization Files"
$chkClean13.Location = New-Object System.Drawing.Point(10, 360)
$chkClean13.AutoSize = $true
$chkClean13.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean13)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean13; Func = {
    Remove-Item -Path "C:\Windows\SoftwareDistribution\DeliveryOptimization\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
    Log "Cleared Delivery Optimization Files"
} }

$chkClean14 = New-Object System.Windows.Forms.CheckBox
$chkClean14.Text = "Clear Windows Logs"
$chkClean14.Location = New-Object System.Drawing.Point(10, 390)
$chkClean14.AutoSize = $true
$chkClean14.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean14)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean14; Func = {
    Remove-Item -Path "C:\Windows\Logs*" -Recurse -Force -ErrorAction SilentlyContinue
    Log "Cleared Windows Logs"
} }

$chkClean15 = New-Object System.Windows.Forms.CheckBox
$chkClean15.Text = "Clear Windows Temp Internet Files"
$chkClean15.Location = New-Object System.Drawing.Point(10, 420)
$chkClean15.AutoSize = $true
$chkClean15.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean15)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean15; Func = {
    Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Windows\INetCache\*" -Recurse -Force -ErrorAction SilentlyContinue
    Log "Cleared Temporary Internet Files"
} }

$chkClean16 = New-Object System.Windows.Forms.CheckBox
$chkClean16.Text = "Clean Windows.old Folder"
$chkClean16.Location = New-Object System.Drawing.Point(10, 450)
$chkClean16.AutoSize = $true
$chkClean16.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean16)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean16; Func = {
    Remove-Item -Path "C:\Windows.old" -Recurse -Force -ErrorAction SilentlyContinue
    Log "Removed Windows.old Folder"
} }

$chkClean17 = New-Object System.Windows.Forms.CheckBox
$chkClean17.Text = "Clear Clipboard Data"
$chkClean17.Location = New-Object System.Drawing.Point(10, 480)
$chkClean17.AutoSize = $true
$chkClean17.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean17)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean17; Func = {
    Set-Clipboard -Value ""
    Log "Cleared Clipboard"
} }

$chkClean18 = New-Object System.Windows.Forms.CheckBox
$chkClean18.Text = "Clear Temp Files from All Users"
$chkClean18.Location = New-Object System.Drawing.Point(10, 510)
$chkClean18.AutoSize = $true
$chkClean18.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean18)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean18; Func = {
    Get-ChildItem "C:\Users" -Directory | ForEach-Object {
        $tempPath = "$($_.FullName)\AppData\Local\Temp"
        if (Test-Path $tempPath) {
            Remove-Item "$tempPath\*" -Recurse -Force -ErrorAction SilentlyContinue
        }
    }
    Log "Cleared Temp Files from All User Profiles"
} }

$chkClean19 = New-Object System.Windows.Forms.CheckBox
$chkClean19.Text = "Clear Update Rollback Files"
$chkClean19.Location = New-Object System.Drawing.Point(10, 540)
$chkClean19.AutoSize = $true
$chkClean19.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean19)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean19; Func = {
    Remove-Item -Path "C:\$WINDOWS.~BT" -Recurse -Force -ErrorAction SilentlyContinue
    Log "Deleted Windows Update Rollback Files"
} }

$chkClean20 = New-Object System.Windows.Forms.CheckBox
$chkClean20.Text = "Run Disk Cleanup with All Options"
$chkClean20.Location = New-Object System.Drawing.Point(10, 570)
$chkClean20.AutoSize = $true
$chkClean20.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelCleanup.Controls.Add($chkClean20)
$categoryCheckboxes["SystemCleanup"] += @{ Box = $chkClean20; Func = {
    Start-Process cleanmgr -ArgumentList "/sagerun:1" -WindowStyle Hidden
    Log "Executed Disk Cleanup with /sagerun:1"
} }

# Services Tab Checkboxes

$chkSvc1 = New-Object System.Windows.Forms.CheckBox
$chkSvc1.Text = "Disable Print Spooler (if no printer)"
$chkSvc1.Location = New-Object System.Drawing.Point(10, 30)
$chkSvc1.AutoSize = $true
$chkSvc1.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc1)
$categoryCheckboxes["ServicesTweaks"] = @()
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc1; Func = {
    Stop-Service -Name "Spooler" -Force -ErrorAction SilentlyContinue
    Set-Service -Name "Spooler" -StartupType Disabled
    Log "Disabled Print Spooler Service"
} }

$chkSvc2 = New-Object System.Windows.Forms.CheckBox
$chkSvc2.Text = "Disable Xbox Services"
$chkSvc2.Location = New-Object System.Drawing.Point(10, 60)
$chkSvc2.AutoSize = $true
$chkSvc2.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc2)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc2; Func = {
    $xboxSvcs = @("XblAuthManager", "XblGameSave", "XboxNetApiSvc", "XboxGipSvc")
    foreach ($svc in $xboxSvcs) {
        Stop-Service -Name $svc -Force -ErrorAction SilentlyContinue
        Set-Service -Name $svc -StartupType Disabled -ErrorAction SilentlyContinue
    }
    Log "Disabled Xbox Related Services"
} }

$chkSvc3 = New-Object System.Windows.Forms.CheckBox
$chkSvc3.Text = "Disable Remote Registry"
$chkSvc3.Location = New-Object System.Drawing.Point(10, 90)
$chkSvc3.AutoSize = $true
$chkSvc3.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc3)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc3; Func = {
    Stop-Service -Name "RemoteRegistry" -Force -ErrorAction SilentlyContinue
    Set-Service -Name "RemoteRegistry" -StartupType Disabled
    Log "Disabled Remote Registry Service"
} }

$chkSvc4 = New-Object System.Windows.Forms.CheckBox
$chkSvc4.Text = "Disable Fax Service"
$chkSvc4.Location = New-Object System.Drawing.Point(10, 120)
$chkSvc4.AutoSize = $true
$chkSvc4.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc4)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc4; Func = {
    Stop-Service -Name "Fax" -ErrorAction SilentlyContinue
    Set-Service -Name "Fax" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled Fax Service"
} }

$chkSvc5 = New-Object System.Windows.Forms.CheckBox
$chkSvc5.Text = "Disable Offline Files (CSC)"
$chkSvc5.Location = New-Object System.Drawing.Point(10, 150)
$chkSvc5.AutoSize = $true
$chkSvc5.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc5)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc5; Func = {
    Stop-Service -Name "CscService" -ErrorAction SilentlyContinue
    Set-Service -Name "CscService" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled Offline Files Service"
} }

$chkSvc6 = New-Object System.Windows.Forms.CheckBox
$chkSvc6.Text = "Disable Smart Card Services"
$chkSvc6.Location = New-Object System.Drawing.Point(10, 180)
$chkSvc6.AutoSize = $true
$chkSvc6.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc6)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc6; Func = {
    Stop-Service -Name "SCardSvr" -ErrorAction SilentlyContinue
    Set-Service -Name "SCardSvr" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled Smart Card Service"
} }

$chkSvc7 = New-Object System.Windows.Forms.CheckBox
$chkSvc7.Text = "Disable Windows Biometric Service"
$chkSvc7.Location = New-Object System.Drawing.Point(10, 210)
$chkSvc7.AutoSize = $true
$chkSvc7.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc7)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc7; Func = {
    Stop-Service -Name "WbioSrvc" -ErrorAction SilentlyContinue
    Set-Service -Name "WbioSrvc" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled Windows Biometric Service"
} }

$chkSvc8 = New-Object System.Windows.Forms.CheckBox
$chkSvc8.Text = "Disable Bluetooth Support Service"
$chkSvc8.Location = New-Object System.Drawing.Point(10, 240)
$chkSvc8.AutoSize = $true
$chkSvc8.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc8)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc8; Func = {
    Stop-Service -Name "bthserv" -ErrorAction SilentlyContinue
    Set-Service -Name "bthserv" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled Bluetooth Support Service"
} }

$chkSvc9 = New-Object System.Windows.Forms.CheckBox
$chkSvc9.Text = "Disable Superfetch (SysMain)"
$chkSvc9.Location = New-Object System.Drawing.Point(10, 270)
$chkSvc9.AutoSize = $true
$chkSvc9.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc9)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc9; Func = {
    Stop-Service -Name "SysMain" -ErrorAction SilentlyContinue
    Set-Service -Name "SysMain" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled SysMain (Superfetch)"
} }

$chkSvc10 = New-Object System.Windows.Forms.CheckBox
$chkSvc10.Text = "Disable Windows Media Sharing"
$chkSvc10.Location = New-Object System.Drawing.Point(10, 300)
$chkSvc10.AutoSize = $true
$chkSvc10.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc10)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc10; Func = {
    Stop-Service -Name "WMPNetworkSvc" -ErrorAction SilentlyContinue
    Set-Service -Name "WMPNetworkSvc" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled Windows Media Player Sharing Service"
} }

$chkSvc11 = New-Object System.Windows.Forms.CheckBox
$chkSvc11.Text = "Disable Windows Error Reporting Service"
$chkSvc11.Location = New-Object System.Drawing.Point(10, 330)
$chkSvc11.AutoSize = $true
$chkSvc11.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc11)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc11; Func = {
    Stop-Service -Name "WerSvc" -ErrorAction SilentlyContinue
    Set-Service -Name "WerSvc" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled Windows Error Reporting"
} }

$chkSvc12 = New-Object System.Windows.Forms.CheckBox
$chkSvc12.Text = "Disable Remote Desktop Services"
$chkSvc12.Location = New-Object System.Drawing.Point(10, 360)
$chkSvc12.AutoSize = $true
$chkSvc12.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc12)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc12; Func = {
    Stop-Service -Name "TermService" -ErrorAction SilentlyContinue
    Set-Service -Name "TermService" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled Remote Desktop Services"
} }

$chkSvc13 = New-Object System.Windows.Forms.CheckBox
$chkSvc13.Text = "Disable SSDP Discovery"
$chkSvc13.Location = New-Object System.Drawing.Point(10, 390)
$chkSvc13.AutoSize = $true
$chkSvc13.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc13)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc13; Func = {
    Stop-Service -Name "SSDPSRV" -ErrorAction SilentlyContinue
    Set-Service -Name "SSDPSRV" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled SSDP Discovery"
} }

$chkSvc14 = New-Object System.Windows.Forms.CheckBox
$chkSvc14.Text = "Disable UPnP Device Host"
$chkSvc14.Location = New-Object System.Drawing.Point(10, 420)
$chkSvc14.AutoSize = $true
$chkSvc14.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc14)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc14; Func = {
    Stop-Service -Name "upnphost" -ErrorAction SilentlyContinue
    Set-Service -Name "upnphost" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled UPnP Device Host"
} }

$chkSvc15 = New-Object System.Windows.Forms.CheckBox
$chkSvc15.Text = "Disable Windows Search (Indexing)"
$chkSvc15.Location = New-Object System.Drawing.Point(10, 450)
$chkSvc15.AutoSize = $true
$chkSvc15.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc15)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc15; Func = {
    Stop-Service -Name "WSearch" -ErrorAction SilentlyContinue
    Set-Service -Name "WSearch" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled Windows Search Indexing"
} }

$chkSvc16 = New-Object System.Windows.Forms.CheckBox
$chkSvc16.Text = "Disable Windows Time Service"
$chkSvc16.Location = New-Object System.Drawing.Point(10, 480)
$chkSvc16.AutoSize = $true
$chkSvc16.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc16)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc16; Func = {
    Stop-Service -Name "W32Time" -ErrorAction SilentlyContinue
    Set-Service -Name "W32Time" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled Windows Time Service"
} }

$chkSvc17 = New-Object System.Windows.Forms.CheckBox
$chkSvc17.Text = "Disable Windows Image Acquisition (WIA)"
$chkSvc17.Location = New-Object System.Drawing.Point(10, 510)
$chkSvc17.AutoSize = $true
$chkSvc17.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc17)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc17; Func = {
    Stop-Service -Name "stisvc" -ErrorAction SilentlyContinue
    Set-Service -Name "stisvc" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled Windows Image Acquisition"
} }

$chkSvc18 = New-Object System.Windows.Forms.CheckBox
$chkSvc18.Text = "Disable Program Compatibility Assistant"
$chkSvc18.Location = New-Object System.Drawing.Point(10, 540)
$chkSvc18.AutoSize = $true
$chkSvc18.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc18)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc18; Func = {
    Stop-Service -Name "PcaSvc" -ErrorAction SilentlyContinue
    Set-Service -Name "PcaSvc" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled Program Compatibility Assistant"
} }

$chkSvc19 = New-Object System.Windows.Forms.CheckBox
$chkSvc19.Text = "Disable Windows Insider Service"
$chkSvc19.Location = New-Object System.Drawing.Point(10, 570)
$chkSvc19.AutoSize = $true
$chkSvc19.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc19)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc19; Func = {
    Stop-Service -Name "wisvc" -ErrorAction SilentlyContinue
    Set-Service -Name "wisvc" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled Windows Insider Service"
} }

$chkSvc20 = New-Object System.Windows.Forms.CheckBox
$chkSvc20.Text = "Disable Secondary Logon"
$chkSvc20.Location = New-Object System.Drawing.Point(10, 600)
$chkSvc20.AutoSize = $true
$chkSvc20.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelServices.Controls.Add($chkSvc20)
$categoryCheckboxes["ServicesTweaks"] += @{ Box = $chkSvc20; Func = {
    Stop-Service -Name "seclogon" -ErrorAction SilentlyContinue
    Set-Service -Name "seclogon" -StartupType Disabled -ErrorAction SilentlyContinue
    Log "Disabled Secondary Logon Service"
} }

# --- Gaming Tab Checkboxes 1 to 10 ---

$chkGame1 = New-Object System.Windows.Forms.CheckBox
$chkGame1.Text = "Enable Game Mode"
$chkGame1.Location = New-Object System.Drawing.Point(10, 30)
$chkGame1.AutoSize = $true
$chkGame1.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame1)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame1; Func = {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\GameBar" -Name "AllowAutoGameMode" -Value 1
    Log "Enabled Game Mode"
} }

$chkGame2 = New-Object System.Windows.Forms.CheckBox
$chkGame2.Text = "Disable Xbox Game DVR"
$chkGame2.Location = New-Object System.Drawing.Point(10, 60)
$chkGame2.AutoSize = $true
$chkGame2.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame2)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame2; Func = {
    Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_Enabled" -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR" -Name "AppCaptureEnabled" -Value 0
    Log "Disabled Xbox Game DVR"
} }

$chkGame3 = New-Object System.Windows.Forms.CheckBox
$chkGame3.Text = "Disable Xbox Game Bar"
$chkGame3.Location = New-Object System.Drawing.Point(10, 90)
$chkGame3.AutoSize = $true
$chkGame3.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame3)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame3; Func = {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR" -Name "GameDVR_Enabled" -Value 0
    Log "Disabled Xbox Game Bar"
} }

$chkGame4 = New-Object System.Windows.Forms.CheckBox
$chkGame4.Text = "Disable Game Bar Tips"
$chkGame4.Location = New-Object System.Drawing.Point(10, 120)
$chkGame4.AutoSize = $true
$chkGame4.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame4)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame4; Func = {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\GameBar" -Name "ShowGameBarTips" -Value 0
    Log "Disabled Game Bar Tips"
} }

$chkGame5 = New-Object System.Windows.Forms.CheckBox
$chkGame5.Text = "Enable Ultimate Performance Power Plan"
$chkGame5.Location = New-Object System.Drawing.Point(10, 150)
$chkGame5.AutoSize = $true
$chkGame5.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame5)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame5; Func = {
    powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
    powercfg -setactive e9a42b02-d5df-448d-aa00-03f14749eb61
    Log "Enabled Ultimate Performance Power Plan"
} }

$chkGame6 = New-Object System.Windows.Forms.CheckBox
$chkGame6.Text = "Disable Nagle's Algorithm (Latency Fix)"
$chkGame6.Location = New-Object System.Drawing.Point(10, 180)
$chkGame6.AutoSize = $true
$chkGame6.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame6)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame6; Func = {
    $adapter = Get-NetAdapter | Where-Object {$_.Status -eq "Up"} | Select-Object -First 1
    $interface = Get-NetIPInterface -InterfaceAlias $adapter.Name | Select-Object -First 1
    $key = "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\$($interface.InterfaceIndex)"
    Set-ItemProperty -Path $key -Name "TcpAckFrequency" -Value 1
    Set-ItemProperty -Path $key -Name "TCPNoDelay" -Value 1
    Log "Disabled Nagle's Algorithm"
} }

$chkGame7 = New-Object System.Windows.Forms.CheckBox
$chkGame7.Text = "Disable Fullscreen Optimization"
$chkGame7.Location = New-Object System.Drawing.Point(10, 210)
$chkGame7.AutoSize = $true
$chkGame7.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame7)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame7; Func = {
    New-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_FSEBehaviorMode" -Value 2 -PropertyType DWord -Force
    Log "Disabled Fullscreen Optimizations"
} }

$chkGame8 = New-Object System.Windows.Forms.CheckBox
$chkGame8.Text = "Enable Hardware-Accelerated GPU Scheduling"
$chkGame8.Location = New-Object System.Drawing.Point(10, 240)
$chkGame8.AutoSize = $true
$chkGame8.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame8)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame8; Func = {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" -Name "HwSchMode" -Value 2
    Log "Enabled GPU Scheduling"
} }

$chkGame9 = New-Object System.Windows.Forms.CheckBox
$chkGame9.Text = "Disable Visual Effects (Best Perf)"
$chkGame9.Location = New-Object System.Drawing.Point(10, 270)
$chkGame9.AutoSize = $true
$chkGame9.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame9)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame9; Func = {
    $key = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects"
    Set-ItemProperty -Path $key -Name "VisualFXSetting" -Value 2
    Log "Set Visual Effects to Best Performance"
} }

$chkGame10 = New-Object System.Windows.Forms.CheckBox
$chkGame10.Text = "Set System Responsiveness to 0 (Gaming)"
$chkGame10.Location = New-Object System.Drawing.Point(10, 300)
$chkGame10.AutoSize = $true
$chkGame10.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame10)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame10; Func = {
    $key = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile"
    Set-ItemProperty -Path $key -Name "SystemResponsiveness" -Value 0
    Log "Set System Responsiveness to 0"
} }
$chkGame11 = New-Object System.Windows.Forms.CheckBox
$chkGame11.Text = "Disable Mouse Acceleration"
$chkGame11.Location = New-Object System.Drawing.Point(10, 330)
$chkGame11.AutoSize = $true
$chkGame11.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame11)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame11; Func = {
    Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSpeed" -Value "0"
    Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold1" -Value "0"
    Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold2" -Value "0"
    Log "Disabled Mouse Acceleration"
} }

$chkGame12 = New-Object System.Windows.Forms.CheckBox
$chkGame12.Text = "Disable Sticky Keys Prompt"
$chkGame12.Location = New-Object System.Drawing.Point(10, 360)
$chkGame12.AutoSize = $true
$chkGame12.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame12)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame12; Func = {
    Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\StickyKeys" -Name "Flags" -Value "506"
    Log "Disabled Sticky Keys Prompt"
} }

$chkGame13 = New-Object System.Windows.Forms.CheckBox
$chkGame13.Text = "Disable Filter Keys Prompt"
$chkGame13.Location = New-Object System.Drawing.Point(10, 390)
$chkGame13.AutoSize = $true
$chkGame13.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame13)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame13; Func = {
    Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\Keyboard Response" -Name "Flags" -Value "122"
    Log "Disabled Filter Keys Prompt"
} }

$chkGame14 = New-Object System.Windows.Forms.CheckBox
$chkGame14.Text = "Disable Toggle Keys Prompt"
$chkGame14.Location = New-Object System.Drawing.Point(10, 420)
$chkGame14.AutoSize = $true
$chkGame14.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame14)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame14; Func = {
    Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\ToggleKeys" -Name "Flags" -Value "58"
    Log "Disabled Toggle Keys Prompt"
} }

$chkGame15 = New-Object System.Windows.Forms.CheckBox
$chkGame15.Text = "Disable Focus Assist Notifications"
$chkGame15.Location = New-Object System.Drawing.Point(10, 450)
$chkGame15.AutoSize = $true
$chkGame15.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame15)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame15; Func = {
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" -Name "NOC_GLOBAL_SETTING_TOASTS_ENABLED" -Value 0
    Log "Disabled Focus Assist Notifications"
} }

$chkGame16 = New-Object System.Windows.Forms.CheckBox
$chkGame16.Text = "Disable Xbox Services"
$chkGame16.Location = New-Object System.Drawing.Point(10, 480)
$chkGame16.AutoSize = $true
$chkGame16.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame16)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame16; Func = {
    $services = "XblGameSave", "XboxGipSvc", "XboxNetApiSvc"
    foreach ($svc in $services) {
        Stop-Service -Name $svc -ErrorAction SilentlyContinue
        Set-Service -Name $svc -StartupType Disabled
    }
    Log "Disabled Xbox Services"
} }

$chkGame17 = New-Object System.Windows.Forms.CheckBox
$chkGame17.Text = "Disable Captures Folder Recording"
$chkGame17.Location = New-Object System.Drawing.Point(10, 510)
$chkGame17.AutoSize = $true
$chkGame17.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame17)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame17; Func = {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR" -Name "AppCaptureEnabled" -Value 0
    Log "Disabled Capture Folder Recording"
} }

$chkGame18 = New-Object System.Windows.Forms.CheckBox
$chkGame18.Text = "Disable Game Recording Background"
$chkGame18.Location = New-Object System.Drawing.Point(10, 540)
$chkGame18.AutoSize = $true
$chkGame18.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame18)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame18; Func = {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR" -Name "AllowGameDVR" -Value 0
    Log "Disabled Game Recording in Background"
} }

$chkGame19 = New-Object System.Windows.Forms.CheckBox
$chkGame19.Text = "Enable Variable Refresh Rate"
$chkGame19.Location = New-Object System.Drawing.Point(10, 570)
$chkGame19.AutoSize = $true
$chkGame19.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame19)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame19; Func = {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" -Name "VRRFeatureEnable" -Value 1
    Log "Enabled Variable Refresh Rate"
} }

$chkGame20 = New-Object System.Windows.Forms.CheckBox
$chkGame20.Text = "Disable Game Bar Hotkeys"
$chkGame20.Location = New-Object System.Drawing.Point(10, 600)
$chkGame20.AutoSize = $true
$chkGame20.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelGaming.Controls.Add($chkGame20)
$categoryCheckboxes["GamingTweaks"] += @{ Box = $chkGame20; Func = {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\GameBar" -Name "UseNexusForGameBarEnabled" -Value 0
    Log "Disabled Game Bar Hotkeys"
} }

# === Networking Optimizations ===

$chkNet1 = New-Object System.Windows.Forms.CheckBox
$chkNet1.Text = "Disable Windows Update P2P"
$chkNet1.Location = New-Object System.Drawing.Point(10, 30)
$chkNet1.AutoSize = $true
$chkNet1.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet1)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet1;
    Func = {
        try {
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Value 0 -ErrorAction Stop
            Log "Disabled Windows Update Peer-to-Peer Delivery"
        } catch {
            Log "Failed to disable Windows Update P2P: $_"
        }
    }
}

$chkNet2 = New-Object System.Windows.Forms.CheckBox
$chkNet2.Text = "Disable Large Send Offload"
$chkNet2.Location = New-Object System.Drawing.Point(10, 60)
$chkNet2.AutoSize = $true
$chkNet2.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet2)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet2;
    Func = {
        try {
            Get-NetAdapterAdvancedProperty -DisplayName "Large Send Offload*" -ErrorAction Stop | ForEach-Object {
                Set-NetAdapterAdvancedProperty -Name $_.InstanceID -DisplayName $_.DisplayName -DisplayValue "Disabled" -ErrorAction Stop
            }
            Log "Disabled Large Send Offload"
        } catch {
            Log "Failed to disable Large Send Offload: $_"
        }
    }
}

$chkNet3 = New-Object System.Windows.Forms.CheckBox
$chkNet3.Text = "Disable Power Saving on Network Adapters"
$chkNet3.Location = New-Object System.Drawing.Point(10, 90)
$chkNet3.AutoSize = $true
$chkNet3.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet3)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet3;
    Func = {
        try {
            Get-NetAdapter | ForEach-Object {
                powercfg -devicedisablewake "$($_.Name)"
            }
            Log "Disabled Power Saving for Network Devices"
        } catch {
            Log "Failed to disable power saving on network adapters: $_"
        }
    }
}

$chkNet4 = New-Object System.Windows.Forms.CheckBox
$chkNet4.Text = "Flush DNS Cache"
$chkNet4.Location = New-Object System.Drawing.Point(10, 120)
$chkNet4.AutoSize = $true
$chkNet4.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet4)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet4;
    Func = {
        try {
            ipconfig /flushdns | Out-Null
            Log "Flushed DNS Cache"
        } catch {
            Log "Failed to flush DNS Cache: $_"
        }
    }
}

$chkNet5 = New-Object System.Windows.Forms.CheckBox
$chkNet5.Text = "Disable IPv6"
$chkNet5.Location = New-Object System.Drawing.Point(10, 150)
$chkNet5.AutoSize = $true
$chkNet5.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet5)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet5;
    Func = {
        try {
            New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" -Name "DisabledComponents" -Value 0xFF -PropertyType DWord -Force -ErrorAction Stop
            Log "Disabled IPv6"
        } catch {
            Log "Failed to disable IPv6: $_"
        }
    }
}

$chkNet6 = New-Object System.Windows.Forms.CheckBox
$chkNet6.Text = "Set DNS to Cloudflare"
$chkNet6.Location = New-Object System.Drawing.Point(10, 180)
$chkNet6.AutoSize = $true
$chkNet6.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet6)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet6;
    Func = {
        try {
            Get-DnsClientServerAddress | ForEach-Object {
                Set-DnsClientServerAddress -InterfaceIndex $_.InterfaceIndex -ServerAddresses @("1.1.1.1", "1.0.0.1") -ErrorAction Stop
            }
            Log "Set DNS to Cloudflare (1.1.1.1, 1.0.0.1)"
        } catch {
            Log "Failed to set DNS to Cloudflare: $_"
        }
    }
}

$chkNet7 = New-Object System.Windows.Forms.CheckBox
$chkNet7.Text = "Disable NetBIOS over TCP/IP"
$chkNet7.Location = New-Object System.Drawing.Point(10, 210)
$chkNet7.AutoSize = $true
$chkNet7.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet7)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet7;
    Func = {
        try {
            Get-CimInstance -Namespace root\cimv2 -ClassName Win32_NetworkAdapterConfiguration | Where-Object { $_.IPEnabled } | ForEach-Object {
                $_.SetTcpipNetbios(2) | Out-Null
            }
            Log "Disabled NetBIOS over TCP/IP"
        } catch {
            Log "Failed to disable NetBIOS over TCP/IP: $_"
        }
    }
}

$chkNet8 = New-Object System.Windows.Forms.CheckBox
$chkNet8.Text = "Disable SMBv1"
$chkNet8.Location = New-Object System.Drawing.Point(10, 240)
$chkNet8.AutoSize = $true
$chkNet8.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet8)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet8;
    Func = {
        try {
            Disable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol" -NoRestart -ErrorAction Stop
            Log "Disabled SMBv1 Protocol"
        } catch {
            Log "Failed to disable SMBv1: $_"
        }
    }
}

$chkNet9 = New-Object System.Windows.Forms.CheckBox
$chkNet9.Text = "Enable TCP Fast Open"
$chkNet9.Location = New-Object System.Drawing.Point(10, 270)
$chkNet9.AutoSize = $true
$chkNet9.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet9)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet9;
    Func = {
        try {
            New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" -Name "EnableTcpFastOpen" -Value 1 -PropertyType DWord -Force -ErrorAction Stop
            Log "Enabled TCP Fast Open"
        } catch {
            Log "Failed to enable TCP Fast Open: $_"
        }
    }
}

$chkNet10 = New-Object System.Windows.Forms.CheckBox
$chkNet10.Text = "Optimize MTU for Ethernet"
$chkNet10.Location = New-Object System.Drawing.Point(10, 300)
$chkNet10.AutoSize = $true
$chkNet10.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet10)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet10;
    Func = {
        try {
            $interface = Get-NetAdapter | Where-Object { $_.Status -eq "Up" -and $_.InterfaceDescription -like "*Ethernet*" } | Select-Object -First 1
            if ($null -ne $interface) {
                netsh interface ipv4 set subinterface $interface.Name mtu=1500 store=persistent
                Log "Optimized MTU for Ethernet interface: $($interface.Name)"
            } else {
                Log "No active Ethernet interface found to set MTU"
            }
        } catch {
            Log "Failed to optimize MTU: $_"
        }
    }
}

$chkNet11 = New-Object System.Windows.Forms.CheckBox
$chkNet11.Text = "Enable DNS Client Service"
$chkNet11.Location = New-Object System.Drawing.Point(10, 330)
$chkNet11.AutoSize = $true
$chkNet11.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet11)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet11;
    Func = {
        try {
            Set-Service -Name Dnscache -StartupType Automatic -ErrorAction Stop
            Start-Service -Name Dnscache -ErrorAction Stop
            Log "Enabled DNS Client Service"
        } catch {
            Log "Failed to enable DNS Client Service: $_"
        }
    }
}

$chkNet12 = New-Object System.Windows.Forms.CheckBox
$chkNet12.Text = "Disable Wi-Fi Sense"
$chkNet12.Location = New-Object System.Drawing.Point(10, 360)
$chkNet12.AutoSize = $true
$chkNet12.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet12)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet12;
    Func = {
        try {
            Set-ItemProperty -Path "HKLM:\Software\Microsoft\WcmSvc\wifinetworkmanager\config" -Name "AutoConnectAllowedOEM" -Value 0 -Force -ErrorAction Stop
            Log "Disabled Wi-Fi Sense"
        } catch {
            Log "Failed to disable Wi-Fi Sense: $_"
        }
    }
}

$chkNet13 = New-Object System.Windows.Forms.CheckBox
$chkNet13.Text = "Disable TCP Timestamps"
$chkNet13.Location = New-Object System.Drawing.Point(10, 390)
$chkNet13.AutoSize = $true
$chkNet13.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet13)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet13;
    Func = {
        try {
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" -Name "Tcp1323Opts" -Value 0 -Force -ErrorAction Stop
            Log "Disabled TCP Timestamps"
        } catch {
            Log "Failed to disable TCP Timestamps: $_"
        }
    }
}

$chkNet14 = New-Object System.Windows.Forms.CheckBox
$chkNet14.Text = "Enable TCP Window Scaling"
$chkNet14.Location = New-Object System.Drawing.Point(10, 420)
$chkNet14.AutoSize = $true
$chkNet14.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet14)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet14;
    Func = {
        try {
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" -Name "Tcp1323Opts" -Value 1 -Force -ErrorAction Stop
            Log "Enabled TCP Window Scaling"
        } catch {
            Log "Failed to enable TCP Window Scaling: $_"
        }
    }
}

$chkNet15 = New-Object System.Windows.Forms.CheckBox
$chkNet15.Text = "Disable NCSI Active Probing"
$chkNet15.Location = New-Object System.Drawing.Point(10, 450)
$chkNet15.AutoSize = $true
$chkNet15.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet15)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet15;
    Func = {
        try {
            New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" -Name "EnableActiveProbing" -Value 0 -PropertyType DWord -Force -ErrorAction Stop
            Log "Disabled NCSI Active Probing"
        } catch {
            Log "Failed to disable NCSI Active Probing: $_"
        }
    }
}

$chkNet16 = New-Object System.Windows.Forms.CheckBox
$chkNet16.Text = "Disable LLMNR"
$chkNet16.Location = New-Object System.Drawing.Point(10, 480)
$chkNet16.AutoSize = $true
$chkNet16.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet16)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet16;
    Func = {
        try {
            Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\DNSClient" -Name "EnableMulticast" -Value 0 -Force -ErrorAction Stop
            Log "Disabled LLMNR"
        } catch {
            Log "Failed to disable LLMNR: $_"
        }
    }
}

$chkNet17 = New-Object System.Windows.Forms.CheckBox
$chkNet17.Text = "Disable Smart Multi-Homed Name Resolution"
$chkNet17.Location = New-Object System.Drawing.Point(10, 510)
$chkNet17.AutoSize = $true
$chkNet17.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet17)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet17;
    Func = {
        try {
            Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\DNSClient" -Name "DisableSmartNameResolution" -Value 1 -Force -ErrorAction Stop
            Log "Disabled Smart Multi-Homed Name Resolution"
        } catch {
            Log "Failed to disable Smart Multi-Homed Name Resolution: $_"
        }
    }
}

$chkNet18 = New-Object System.Windows.Forms.CheckBox
$chkNet18.Text = "Disable Teredo Tunneling"
$chkNet18.Location = New-Object System.Drawing.Point(10, 540)
$chkNet18.AutoSize = $true
$chkNet18.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet18)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet18;
    Func = {
        try {
            netsh interface teredo set state disabled
            Log "Disabled Teredo Tunneling"
        } catch {
            Log "Failed to disable Teredo Tunneling: $_"
        }
    }
}

$chkNet19 = New-Object System.Windows.Forms.CheckBox
$chkNet19.Text = "Disable ISATAP"
$chkNet19.Location = New-Object System.Drawing.Point(10, 570)
$chkNet19.AutoSize = $true
$chkNet19.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet19)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet19;
    Func = {
        try {
            netsh interface isatap set state disabled
            Log "Disabled ISATAP"
        } catch {
            Log "Failed to disable ISATAP: $_"
        }
    }
}

$chkNet20 = New-Object System.Windows.Forms.CheckBox
$chkNet20.Text = "Disable 6to4"
$chkNet20.Location = New-Object System.Drawing.Point(10, 600)
$chkNet20.AutoSize = $true
$chkNet20.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelNetworking.Controls.Add($chkNet20)
$categoryCheckboxes["NetworkingTweaks"] += @{
    Box = $chkNet20;
    Func = {
        try {
            netsh interface 6to4 set state disabled
            Log "Disabled 6to4"
        } catch {
            Log "Failed to disable 6to4: $_"
        }
    }
}

# Ensure $categoryCheckboxes["UITweaks"] is initialized as an array if not already
if (-not $categoryCheckboxes.ContainsKey("UITweaks")) {
    $categoryCheckboxes["UITweaks"] = @()
}

# Disable Lock Screen
$chkUI1 = New-Object System.Windows.Forms.CheckBox
$chkUI1.Text = "Disable Lock Screen"
$chkUI1.Location = New-Object System.Drawing.Point(10, 30)
$chkUI1.AutoSize = $true
$chkUI1.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI1)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI1;
    Func = {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" -Force | Out-Null
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" -Name "NoLockScreen" -Value 1 -Force
        Log "Disabled Lock Screen"
    }
}

# Show File Extensions
$chkUI2 = New-Object System.Windows.Forms.CheckBox
$chkUI2.Text = "Show File Extensions"
$chkUI2.Location = New-Object System.Drawing.Point(10, 60)
$chkUI2.AutoSize = $true
$chkUI2.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI2)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI2;
    Func = {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Value 0 -Force
        Log "Enabled File Extensions"
    }
}

# Disable Taskbar Search Box
$chkUI3 = New-Object System.Windows.Forms.CheckBox
$chkUI3.Text = "Disable Taskbar Search Box"
$chkUI3.Location = New-Object System.Drawing.Point(10, 90)
$chkUI3.AutoSize = $true
$chkUI3.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI3)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI3;
    Func = {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Value 0 -Force
        Log "Disabled Taskbar Search Box"
    }
}

# Show Hidden Files
$chkUI4 = New-Object System.Windows.Forms.CheckBox
$chkUI4.Text = "Show Hidden Files"
$chkUI4.Location = New-Object System.Drawing.Point(10, 120)
$chkUI4.AutoSize = $true
$chkUI4.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI4)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI4;
    Func = {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden" -Value 1 -Force
        Log "Enabled Hidden Files View"
    }
}

# Disable Task View Button
$chkUI5 = New-Object System.Windows.Forms.CheckBox
$chkUI5.Text = "Disable Task View Button"
$chkUI5.Location = New-Object System.Drawing.Point(10, 150)
$chkUI5.AutoSize = $true
$chkUI5.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI5)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI5;
    Func = {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Value 0 -Force
        Log "Disabled Task View Button"
    }
}

# Disable Shake to Minimize (Aero Shake)
$chkUI6 = New-Object System.Windows.Forms.CheckBox
$chkUI6.Text = "Disable Shake to Minimize"
$chkUI6.Location = New-Object System.Drawing.Point(10, 180)
$chkUI6.AutoSize = $true
$chkUI6.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI6)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI6;
    Func = {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisallowShaking" -Value 1 -Force
        Log "Disabled Aero Shake"
    }
}

# Use Dark Mode
$chkUI7 = New-Object System.Windows.Forms.CheckBox
$chkUI7.Text = "Use Dark Mode"
$chkUI7.Location = New-Object System.Drawing.Point(10, 210)
$chkUI7.AutoSize = $true
$chkUI7.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI7)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI7;
    Func = {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Value 0 -Force
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 0 -Force
        Log "Set System to Dark Mode"
    }
}

# Enable Classic File Explorer Ribbon
$chkUI8 = New-Object System.Windows.Forms.CheckBox
$chkUI8.Text = "Enable Classic File Explorer Ribbon"
$chkUI8.Location = New-Object System.Drawing.Point(10, 240)
$chkUI8.AutoSize = $true
$chkUI8.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI8)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI8;
    Func = {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" -Force | Out-Null
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" -Name "{e2bf9676-5f8f-435c-97eb-11607a5bedf7}" -ErrorAction SilentlyContinue
        Log "Enabled Classic Explorer Ribbon"
    }
}

# Enable Verbose Startup/Shutdown
$chkUI9 = New-Object System.Windows.Forms.CheckBox
$chkUI9.Text = "Enable Verbose Startup/Shutdown"
$chkUI9.Location = New-Object System.Drawing.Point(10, 270)
$chkUI9.AutoSize = $true
$chkUI9.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI9)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI9;
    Func = {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Force | Out-Null
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "VerboseStatus" -Value 1 -Force
        Log "Enabled Verbose Boot Messages"
    }
}

# Disable First Logon Animation
$chkUI10 = New-Object System.Windows.Forms.CheckBox
$chkUI10.Text = "Disable First Logon Animation"
$chkUI10.Location = New-Object System.Drawing.Point(10, 300)
$chkUI10.AutoSize = $true
$chkUI10.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI10)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI10;
    Func = {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "EnableFirstLogonAnimation" -Value 0 -Force
        Log "Disabled First Logon Animation"
    }
}

# Show This PC by Default in Explorer
$chkUI11 = New-Object System.Windows.Forms.CheckBox
$chkUI11.Text = "Show This PC by Default in Explorer"
$chkUI11.Location = New-Object System.Drawing.Point(10, 330)
$chkUI11.AutoSize = $true
$chkUI11.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI11)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI11;
    Func = {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Value 1 -Force
        Log "Set Explorer to Open This PC"
    }
}

# Disable Meet Now from Taskbar
$chkUI12 = New-Object System.Windows.Forms.CheckBox
$chkUI12.Text = "Disable Meet Now from Taskbar"
$chkUI12.Location = New-Object System.Drawing.Point(10, 360)
$chkUI12.AutoSize = $true
$chkUI12.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI12)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI12;
    Func = {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "HideSCAMeetNow" -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "HideSCAMeetNow" -Value 1 -Force
        Log "Disabled Meet Now Button"
    }
}

# Disable Suggested Content in Settings
$chkUI13 = New-Object System.Windows.Forms.CheckBox
$chkUI13.Text = "Disable Suggested Content in Settings"
$chkUI13.Location = New-Object System.Drawing.Point(10, 390)
$chkUI13.AutoSize = $true
$chkUI13.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI13)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI13;
    Func = {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338393Enabled" -Value 0 -Force
        Log "Disabled Suggested Content in Settings"
    }
}

# Disable Recent Files in Quick Access
$chkUI14 = New-Object System.Windows.Forms.CheckBox
$chkUI14.Text = "Disable Recent Files in Quick Access"
$chkUI14.Location = New-Object System.Drawing.Point(10, 420)
$chkUI14.AutoSize = $true
$chkUI14.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI14)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI14;
    Func = {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowRecent" -Value 0 -Force
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowFrequent" -Value 0 -Force
        Log "Disabled Recent Files in Quick Access"
    }
}

# Hide 3D Objects from This PC
$chkUI15 = New-Object System.Windows.Forms.CheckBox
$chkUI15.Text = "Hide 3D Objects from This PC"
$chkUI15.Location = New-Object System.Drawing.Point(10, 450)
$chkUI15.AutoSize = $true
$chkUI15.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI15)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI15;
    Func = {
        Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -Recurse -ErrorAction SilentlyContinue
        Log "Removed 3D Objects Folder from This PC"
    }
}

# Disable Start Menu Suggestions
$chkUI16 = New-Object System.Windows.Forms.CheckBox
$chkUI16.Text = "Disable Start Menu Suggestions"
$chkUI16.Location = New-Object System.Drawing.Point(10, 480)
$chkUI16.AutoSize = $true
$chkUI16.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI16)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI16;
    Func = {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Value 0 -Force
        Log "Disabled Start Menu Suggestions"
    }
}

# Use Small Taskbar Icons
$chkUI17 = New-Object System.Windows.Forms.CheckBox
$chkUI17.Text = "Use Small Taskbar Icons"
$chkUI17.Location = New-Object System.Drawing.Point(10, 510)
$chkUI17.AutoSize = $true
$chkUI17.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI17)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI17;
    Func = {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarSmallIcons" -Value 1 -Force
        Log "Enabled Small Taskbar Icons"
    }
}

# Hide Search Icon on Taskbar
$chkUI18 = New-Object System.Windows.Forms.CheckBox
$chkUI18.Text = "Hide Search Icon on Taskbar"
$chkUI18.Location = New-Object System.Drawing.Point(10, 540)
$chkUI18.AutoSize = $true
$chkUI18.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI18)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI18;
    Func = {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Value 0 -Force
        Log "Hidden Search Icon"
    }
}

# Disable Cortana
$chkUI19 = New-Object System.Windows.Forms.CheckBox
$chkUI19.Text = "Disable Cortana"
$chkUI19.Location = New-Object System.Drawing.Point(10, 570)
$chkUI19.AutoSize = $true
$chkUI19.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI19)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI19;
    Func = {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Value 0 -Force
        Log "Disabled Cortana"
    }
}

# Disable Bing Search in Start Menu
$chkUI20 = New-Object System.Windows.Forms.CheckBox
$chkUI20.Text = "Disable Bing Search in Start Menu"
$chkUI20.Location = New-Object System.Drawing.Point(10, 600)
$chkUI20.AutoSize = $true
$chkUI20.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelUI.Controls.Add($chkUI20)
$categoryCheckboxes["UITweaks"] += @{
    Box = $chkUI20;
    Func = {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "DisableWebSearch" -Value 1 -Force
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "ConnectedSearchUseWeb" -Value 0 -Force
        Log "Disabled Bing Search"
    }
}

# Security Tweaks Panel Setup
$panelSecurity = New-Object System.Windows.Forms.Panel
$panelSecurity.Size = New-Object System.Drawing.Size(460, 620)
$panelSecurity.Location = New-Object System.Drawing.Point(10, 40)
$panelSecurity.Visible = $false
$tabControl.Controls.Add($panelSecurity)


# Make sure $categoryCheckboxes["Security"] is initialized as an array before adding
if (-not $categoryCheckboxes.ContainsKey("Security")) {
    $categoryCheckboxes["Security"] = @()
}

# Add security tweaks checkboxes and their associated functions

$chkSec1 = New-Object System.Windows.Forms.CheckBox
$chkSec1.Text = "Enable Windows Defender"
$chkSec1.Location = New-Object System.Drawing.Point(10, 10)
$chkSec1.AutoSize = $true
$chkSec1.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec1)
$categoryCheckboxes["Security"] += @{ Box = $chkSec1; Func = {
    Set-MpPreference -DisableRealtimeMonitoring $false
    Log "Enabled Windows Defender Real-time Monitoring"
} }

$chkSec2 = New-Object System.Windows.Forms.CheckBox
$chkSec2.Text = "Enable Windows Firewall"
$chkSec2.Location = New-Object System.Drawing.Point(10, 40)
$chkSec2.AutoSize = $true
$chkSec2.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec2)
$categoryCheckboxes["Security"] += @{ Box = $chkSec2; Func = {
    Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True
    Log "Enabled Windows Firewall"
} }

$chkSec3 = New-Object System.Windows.Forms.CheckBox
$chkSec3.Text = "Disable SMBv1 Protocol"
$chkSec3.Location = New-Object System.Drawing.Point(10, 70)
$chkSec3.AutoSize = $true
$chkSec3.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec3)
$categoryCheckboxes["Security"] += @{ Box = $chkSec3; Func = {
    Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol -NoRestart
    Log "Disabled SMBv1 Protocol"
} }

$chkSec4 = New-Object System.Windows.Forms.CheckBox
$chkSec4.Text = "Enable Controlled Folder Access"
$chkSec4.Location = New-Object System.Drawing.Point(10, 100)
$chkSec4.AutoSize = $true
$chkSec4.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec4)
$categoryCheckboxes["Security"] += @{ Box = $chkSec4; Func = {
    Set-MpPreference -EnableControlledFolderAccess Enabled
    Log "Enabled Controlled Folder Access"
} }

$chkSec5 = New-Object System.Windows.Forms.CheckBox
$chkSec5.Text = "Enable Exploit Protection"
$chkSec5.Location = New-Object System.Drawing.Point(10, 130)
$chkSec5.AutoSize = $true
$chkSec5.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec5)
$categoryCheckboxes["Security"] += @{ Box = $chkSec5; Func = {
    Set-ProcessMitigation -System -Enable DEP,ASLR
    Log "Enabled Exploit Protection (DEP & ASLR)"
} }

$chkSec6 = New-Object System.Windows.Forms.CheckBox
$chkSec6.Text = "Disable Remote Desktop"
$chkSec6.Location = New-Object System.Drawing.Point(10, 160)
$chkSec6.AutoSize = $true
$chkSec6.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec6)
$categoryCheckboxes["Security"] += @{ Box = $chkSec6; Func = {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 1
    Log "Disabled Remote Desktop"
} }

$chkSec7 = New-Object System.Windows.Forms.CheckBox
$chkSec7.Text = "Disable SMBv2 and SMBv3 (if needed)"
$chkSec7.Location = New-Object System.Drawing.Point(10, 190)
$chkSec7.AutoSize = $true
$chkSec7.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec7)
$categoryCheckboxes["Security"] += @{ Box = $chkSec7; Func = {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "SMB2" -Value 0 -Type DWord
    Log "Disabled SMBv2 and SMBv3"
} }

$chkSec8 = New-Object System.Windows.Forms.CheckBox
$chkSec8.Text = "Enable Network Level Authentication (NLA)"
$chkSec8.Location = New-Object System.Drawing.Point(10, 220)
$chkSec8.AutoSize = $true
$chkSec8.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec8)
$categoryCheckboxes["Security"] += @{ Box = $chkSec8; Func = {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "UserAuthentication" -Value 1
    Log "Enabled Network Level Authentication"
} }

$chkSec9 = New-Object System.Windows.Forms.CheckBox
$chkSec9.Text = "Disable Windows Script Host"
$chkSec9.Location = New-Object System.Drawing.Point(10, 250)
$chkSec9.AutoSize = $true
$chkSec9.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec9)
$categoryCheckboxes["Security"] += @{ Box = $chkSec9; Func = {
    Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows Script Host\Settings" -Name "Enabled" -Value 0
    Log "Disabled Windows Script Host"
} }

$chkSec10 = New-Object System.Windows.Forms.CheckBox
$chkSec10.Text = "Disable Autorun for USB drives"
$chkSec10.Location = New-Object System.Drawing.Point(10, 280)
$chkSec10.AutoSize = $true
$chkSec10.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec10)
$categoryCheckboxes["Security"] += @{ Box = $chkSec10; Func = {
    Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoDriveTypeAutoRun" -Value 0xFF -Type DWord
    Log "Disabled Autorun for USB drives"
} }

# Additional 10 checkboxes

$chkSec11 = New-Object System.Windows.Forms.CheckBox
$chkSec11.Text = "Disable LLMNR"
$chkSec11.Location = New-Object System.Drawing.Point(10, 310)
$chkSec11.AutoSize = $true
$chkSec11.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec11)
$categoryCheckboxes["Security"] += @{ Box = $chkSec11; Func = {
    New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\DNSClient" -Name "EnableMulticast" -PropertyType DWord -Value 0 -Force
    Log "Disabled LLMNR"
} }

$chkSec12 = New-Object System.Windows.Forms.CheckBox
$chkSec12.Text = "Enable Windows Defender Tamper Protection"
$chkSec12.Location = New-Object System.Drawing.Point(10, 340)
$chkSec12.AutoSize = $true
$chkSec12.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec12)
$categoryCheckboxes["Security"] += @{ Box = $chkSec12; Func = {
    # Tamper Protection typically requires MDM or manual registry edits — logging a message only
    Log "Tamper Protection can only be enabled via MDM or manually"
} }

$chkSec13 = New-Object System.Windows.Forms.CheckBox
$chkSec13.Text = "Disable SMB Signing Requirement"
$chkSec13.Location = New-Object System.Drawing.Point(10, 370)
$chkSec13.AutoSize = $true
$chkSec13.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec13)
$categoryCheckboxes["Security"] += @{ Box = $chkSec13; Func = {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "RequireSecuritySignature" -Value 0 -Type DWord
    Log "Disabled SMB Signing Requirement"
} }

$chkSec14 = New-Object System.Windows.Forms.CheckBox
$chkSec14.Text = "Disable Storage Sense"
$chkSec14.Location = New-Object System.Drawing.Point(10, 400)
$chkSec14.AutoSize = $true
$chkSec14.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec14)
$categoryCheckboxes["Security"] += @{ Box = $chkSec14; Func = {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Name "01" -Value 0 -Type DWord
    Log "Disabled Storage Sense"
} }

$chkSec15 = New-Object System.Windows.Forms.CheckBox
$chkSec15.Text = "Disable Windows Remote Management (WinRM)"
$chkSec15.Location = New-Object System.Drawing.Point(10, 430)
$chkSec15.AutoSize = $true
$chkSec15.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec15)
$categoryCheckboxes["Security"] += @{ Box = $chkSec15; Func = {
    Stop-Service -Name WinRM -Force -ErrorAction SilentlyContinue
    Set-Service -Name WinRM -StartupType Disabled
    Log "Disabled Windows Remote Management (WinRM)"
} }

$chkSec16 = New-Object System.Windows.Forms.CheckBox
$chkSec16.Text = "Disable SMBv1 Client"
$chkSec16.Location = New-Object System.Drawing.Point(10, 460)
$chkSec16.AutoSize = $true
$chkSec16.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec16)
$categoryCheckboxes["Security"] += @{ Box = $chkSec16; Func = {
    Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol -NoRestart
    Log "Disabled SMBv1 Client"
} }

$chkSec17 = New-Object System.Windows.Forms.CheckBox
$chkSec17.Text = "Enable Audit Logging"
$chkSec17.Location = New-Object System.Drawing.Point(10, 490)
$chkSec17.AutoSize = $true
$chkSec17.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec17)
$categoryCheckboxes["Security"] += @{ Box = $chkSec17; Func = {
    auditpol /set /subcategory:"Logon" /success:enable /failure:enable
    Log "Enabled Audit Logging for Logons"
} }

$chkSec18 = New-Object System.Windows.Forms.CheckBox
$chkSec18.Text = "Disable Windows Remote Assistance"
$chkSec18.Location = New-Object System.Drawing.Point(10, 520)
$chkSec18.AutoSize = $true
$chkSec18.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec18)
$categoryCheckboxes["Security"] += @{ Box = $chkSec18; Func = {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Value 0 -Type DWord
    Log "Disabled Windows Remote Assistance"
} }

$chkSec19 = New-Object System.Windows.Forms.CheckBox
$chkSec19.Text = "Disable WPS Office Trust Center"
$chkSec19.Location = New-Object System.Drawing.Point(10, 550)
$chkSec19.AutoSize = $true
$chkSec19.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec19)
$categoryCheckboxes["Security"] += @{ Box = $chkSec19; Func = {
    # Placeholder for specific app tweak
    Log "Disabled WPS Office Trust Center (placeholder)"
} }

$chkSec20 = New-Object System.Windows.Forms.CheckBox
$chkSec20.Text = "Disable Remote Registry Service"
$chkSec20.Location = New-Object System.Drawing.Point(10, 580)
$chkSec20.AutoSize = $true
$chkSec20.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$panelSecurity.Controls.Add($chkSec20)
$categoryCheckboxes["Security"] += @{ Box = $chkSec20; Func = {
    Stop-Service -Name RemoteRegistry -Force -ErrorAction SilentlyContinue
    Set-Service -Name RemoteRegistry -StartupType Disabled
    Log "Disabled Remote Registry Service"
} }

Disable-WindowsOptionalFeature -Online -FeatureName SMB2Protocol -NoRestart
Log "Disabled SMBv2 Client"

Set-MpPreference -EnableNetworkProtection Enabled
Log "Enabled Windows Defender Network Protection"

Set-MpPreference -MAPSReporting Advanced
Log "Enabled Windows Defender Cloud Protection"

Set-MpPreference -DisableBehaviorMonitoring $false
Log "Enabled Windows Defender Behavior Monitoring"

Remove-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\WSMAN" -Recurse -Force -ErrorAction SilentlyContinue
Log "Disabled Windows Remote Management Listener"

Set-Service -Name MSIServer -StartupType Disabled
Stop-Service -Name MSIServer -Force -ErrorAction SilentlyContinue
Log "Disabled Windows Installer Service"

Set-Service -Name TermService -StartupType Disabled
Stop-Service -Name TermService -Force -ErrorAction SilentlyContinue
Log "Disabled Remote Desktop Services"

Enable-BitLocker -MountPoint "C:" -EncryptionMethod XtsAes256 -UsedSpaceOnlyEncryption -TpmProtector
Log "Enabled BitLocker Encryption"

# ... continue for each action you want ...

Stop-Service -Name WSearch -Force -ErrorAction SilentlyContinue
Set-Service -Name WSearch -StartupType Disabled
Log "Disabled Windows Search Indexing"

Stop-Service -Name SysMain -Force -ErrorAction SilentlyContinue
Set-Service -Name SysMain -StartupType Disabled
Log "Disabled Superfetch (SysMain)"

Stop-Service -Name wuauserv -Force -ErrorAction SilentlyContinue
Set-Service -Name wuauserv -StartupType Disabled
Log "Disabled Windows Update Service"

Stop-Service -Name BITS -Force -ErrorAction SilentlyContinue
Set-Service -Name BITS -StartupType Disabled
Log "Disabled Background Intelligent Transfer Service (BITS)"

Stop-Service -Name WerSvc -Force -ErrorAction SilentlyContinue
Set-Service -Name WerSvc -StartupType Disabled
Log "Disabled Windows Error Reporting Service"

Stop-Service -Name DiagTrack -Force -ErrorAction SilentlyContinue
Set-Service -Name DiagTrack -StartupType Disabled
Log "Disabled Diagnostic Tracking Service"

Stop-Service -Name RemoteRegistry -Force -ErrorAction SilentlyContinue
Set-Service -Name RemoteRegistry -StartupType Disabled
Log "Disabled Remote Registry Service"

Stop-Service -Name WinDefend -Force -ErrorAction SilentlyContinue
Set-Service -Name WinDefend -StartupType Disabled
Log "Disabled Windows Defender Antivirus Service"

powercfg /setacvalueindex SCHEME_CURRENT SUB_NONE FASTSTART 1
powercfg /setdcvalueindex SCHEME_CURRENT SUB_NONE FASTSTART 1
powercfg /setactive SCHEME_CURRENT
Log "Enabled Fast Startup"

Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" -Name "SystemResponsiveness" -Value 10 -Force
Log "Increased System Responsiveness"

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Value 0 -Force
Log "Disabled Windows Tips"

Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" -Name "ClearPageFileAtShutdown" -Value 1 -Force
Log "Enabled Clear Pagefile at Shutdown"

Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Value 0 -Force
Log "Disabled Window Animations"

$regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects"
Set-ItemProperty -Path $regPath -Name VisualFXSetting -Value 2 -Force
Log "Set Visual Effects for Best Performance"

Set-MpPreference -DisableScheduledScanning $true
Log "Disabled Windows Defender Scheduled Scan"

Set-Service -Name bthserv -StartupType Disabled
Stop-Service -Name bthserv -Force -ErrorAction SilentlyContinue
Log "Disabled Bluetooth Service"

Set-Service -Name WMPNetworkSvc -StartupType Disabled
Stop-Service -Name WMPNetworkSvc -Force -ErrorAction SilentlyContinue
Log "Disabled Windows Media Player Network Sharing Service"

Set-MpPreference -DisableArchiveScanning $true
Log "Disabled Windows Defender Offline Scan"

powercfg -setactive SCHEME_MIN
Log "Set Power Plan to High Performance"

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR" -Name "AppCaptureEnabled" -Value 0 -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR" -Name "GameDVR_Enabled" -Value 0 -Force
Log "Disabled Windows Game Bar"

Get-Service -Name Xbox* | Stop-Service -Force -ErrorAction SilentlyContinue
Get-Service -Name Xbox* | Set-Service -StartupType Disabled
Log "Disabled Xbox Services"

Set-Service -Name WaaSMedicSvc -StartupType Disabled
Stop-Service -Name WaaSMedicSvc -Force -ErrorAction SilentlyContinue
Log "Disabled Windows Update Medic Service"

Set-Service -Name DoSvc -StartupType Disabled
Stop-Service -Name DoSvc -Force -ErrorAction SilentlyContinue
Log "Disabled Delivery Optimization"

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Name "GlobalUserDisabled" -Value 1 -Force
Log "Disabled Background Apps"

Set-MpPreference -DisableEnhancedNotifications $true
Log "Disabled Windows Defender Notifications"

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "RotatingLockScreenEnabled" -Value 0 -Force
Log "Disabled Windows Spotlight"

Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Value 0 -Force
Log "Disabled Cortana"

Set-MpPreference -DisableRealtimeMonitoring $true
Log "Disabled Windows Defender Real-time Protection"

schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /Disable
Log "Disabled Windows Defender Scheduled Quick Scan"

Stop-Process -Name "explorer" -Force
Remove-Item "$env:LOCALAPPDATA\Microsoft\Windows\Notifications" -Recurse -Force -ErrorAction SilentlyContinue
Start-Process "explorer"
Log "Disabled Windows Notification Center"

$yPos = 60

# Extended privacy tweaks
$privacyTweaks += @(
    @{ Text = "Disable Web Search in Start Menu"; Path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search"; Name = "BingSearchEnabled"; Value = 0 },
    @{ Text = "Disable Cortana Search"; Path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search"; Name = "AllowCortana"; Value = 0 },
    @{ Text = "Disable Background Apps"; Path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications"; Name = "GlobalUserDisabled"; Value = 1 },
    @{ Text = "Disable Tailored Experiences"; Path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Privacy"; Name = "TailoredExperiencesWithDiagnosticDataEnabled"; Value = 0 },
    @{ Text = "Disable Inking & Typing Personalization"; Path = "HKCU:\Software\Microsoft\InputPersonalization"; Name = "RestrictImplicitTextCollection"; Value = 1 },
    @{ Text = "Disable Inking & Typing Recognition"; Path = "HKCU:\Software\Microsoft\InputPersonalization"; Name = "RestrictImplicitInkCollection"; Value = 1 },
    @{ Text = "Disable Let Apps Use Other Devices"; Path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\LooselyCoupled"; Name = "Value"; Value = "Deny" },
    @{ Text = "Disable SmartScreen for Store Apps"; Path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost"; Name = "EnableWebContentEvaluation"; Value = 0 },
    @{ Text = "Disable Activity History Upload"; Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System"; Name = "UploadUserActivities"; Value = 0 },
    @{ Text = "Disable Sensors"; Path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Sensors"; Name = "DisableSensors"; Value = 1 },
    @{ Text = "Disable Windows Welcome Experience"; Path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"; Name = "SubscribedContent-310093Enabled"; Value = 0 }
)
# System/Performance/Network tweaks (141-180)
$yPos = 10
$systemTweaks = @(
    @{ Text = "Disable Windows Defender Scheduled Scans"; Action = { Set-MpPreference -DisableScheduledScan $true; Log "Disabled Windows Defender Scheduled Scans" } },
    @{ Text = "Enable Fast Startup"; Action = { powercfg -setfaststartup on; Log "Enabled Fast Startup" } },
    @{ Text = "Disable Windows Error Reporting"; Action = { Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -Value 1 -Force; Log "Disabled Windows Error Reporting" } },
    @{ Text = "Disable System Restore"; Action = { Disable-ComputerRestore -Drive "C:\"; Log "Disabled System Restore" } },
    @{ Text = "Disable Windows Search Indexing"; Action = { Set-Service -Name "WSearch" -StartupType Disabled; Stop-Service "WSearch" -Force; Log "Disabled Windows Search Indexing" } },
    @{ Text = "Disable Superfetch (SysMain)"; Action = { Set-Service -Name "SysMain" -StartupType Disabled; Stop-Service "SysMain" -Force; Log "Disabled Superfetch (SysMain)" } },
    @{ Text = "Disable Windows Tips"; Action = { Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Value 0 -Force; Log "Disabled Windows Tips" } },
    @{ Text = "Disable SMBv1 Protocol"; Action = { Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol -NoRestart; Log "Disabled SMBv1 Protocol" } },
    @{ Text = "Enable Write Caching"; Action = {
        powercfg -attributes SUB_DISK 6738E2C4-B435-4F0A-AD46-93FDCC6E0CC0 -ATTRIB_HIDE
        powercfg -setacvalueindex SCHEME_CURRENT SUB_DISK 6738E2C4-B435-4F0A-AD46-93FDCC6E0CC0 1
        powercfg -setactive SCHEME_CURRENT
        Log "Enabled Write Caching"
    }},
    @{ Text = "Disable IPv6"; Action = { Disable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip6; Log "Disabled IPv6" } },
    @{ Text = "Disable Windows Remote Management"; Action = { Set-Service -Name WinRM -StartupType Disabled; Stop-Service WinRM -Force; Log "Disabled Windows Remote Management" } },
    @{ Text = "Disable Bluetooth Support Service"; Action = { Set-Service -Name bthserv -StartupType Disabled; Stop-Service bthserv -Force; Log "Disabled Bluetooth Support Service" } },
    @{ Text = "Disable Print Spooler"; Action = { Set-Service -Name Spooler -StartupType Disabled; Stop-Service Spooler -Force; Log "Disabled Print Spooler" } },
    @{ Text = "Disable Windows Defender Real-Time Protection"; Action = { Set-MpPreference -DisableRealtimeMonitoring $true; Log "Disabled Defender Real-Time Protection" } },
    @{ Text = "Disable Background Apps"; Action = { Get-AppxPackage | ForEach-Object { Remove-AppxPackage $_.PackageFullName }; Log "Disabled Background Apps" } },
    @{ Text = "Disable Windows Firewall"; Action = { Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False; Log "Disabled Windows Firewall" } },
    @{ Text = "Set Maximum Processor State to 100%"; Action = {
        powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX 100
        powercfg -setactive SCHEME_CURRENT
        Log "Set Max Processor State to 100%"
    }},
    @{ Text = "Disable Windows Defender Scheduled Tasks"; Action = { Get-ScheduledTask -TaskName "Windows Defender Scheduled Scan" | Disable-ScheduledTask; Log "Disabled Windows Defender Scheduled Tasks" } }
)

foreach ($tweak in $systemTweaks) {
    Add-CategoryCheckbox -text $tweak.Text -action $tweak.Action -panel $panelSystem -y $yPos -category "System"
    $yPos += 30
}

# Miscellaneous tweaks (181-200+)
$yPos = 10
$miscTweaks = @(
    @{ Text = "Disable Windows Error Reporting Service"; Action = { Set-Service -Name WerSvc -StartupType Disabled; Stop-Service WerSvc -Force; Log "Disabled Windows Error Reporting Service" } },
    @{ Text = "Clear Event Viewer Logs"; Action = { wevtutil el | ForEach-Object { wevtutil cl $_ }; Log "Cleared Event Viewer Logs" } },
    @{ Text = "Disable Windows Defender Network Inspection Service"; Action = { Set-Service -Name WdNisSvc -StartupType Disabled; Stop-Service WdNisSvc -Force; Log "Disabled Network Inspection Service" } },
    @{ Text = "Disable Automatic Maintenance Tasks"; Action = { schtasks /Change /TN "\Microsoft\Windows\TaskScheduler\Maintenance Configurator" /Disable; Log "Disabled Automatic Maintenance Tasks" } },
    @{ Text = "Disable Windows Store Auto-Update"; Action = { Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Value 0 -Force; Log "Disabled Windows Store Auto-Update" } },
    @{ Text = "Disable Cortana"; Action = { Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Value 0 -Force; Log "Disabled Cortana" } },
    @{ Text = "Disable OneDrive"; Action = {
        Stop-Process -Name OneDrive -Force -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSyncNGSC" -Value 1 -Force
        Log "Disabled OneDrive"
    }},
    @{ Text = "Disable Connected User Experiences and Telemetry Service"; Action = { Set-Service -Name DiagTrack -StartupType Disabled; Stop-Service DiagTrack -Force; Log "Disabled Connected User Experiences and Telemetry" } },
    @{ Text = "Disable Windows Biometric Service"; Action = { Set-Service -Name WbioSrvc -StartupType Disabled; Stop-Service WbioSrvc -Force; Log "Disabled Windows Biometric Service" } },
    @{ Text = "Disable Windows Update Delivery Optimization"; Action = { Set-Service -Name DoSvc -StartupType Disabled; Stop-Service DoSvc -Force; Log "Disabled Delivery Optimization" } }
)

foreach ($tweak in $miscTweaks) {
    Add-CategoryCheckbox -text $tweak.Text -action $tweak.Action -panel $panelMisc -y $yPos -category "Misc"
    $yPos += 30
}

# Apply Button
$btnApply = New-Object System.Windows.Forms.Button
$btnApply.Text = "Apply"
$btnApply.Size = New-Object System.Drawing.Size(100, 30)
$btnApply.Location = New-Object System.Drawing.Point(870, 640)
$btnApply.Font = New-Object System.Drawing.Font("Segoe UI", 10, [System.Drawing.FontStyle]::Bold)
$btnApply.BackColor = [System.Drawing.Color]::LightGreen

$btnApply.Add_Click({
    foreach ($category in $categoryCheckboxes.Keys) {
        foreach ($entry in $categoryCheckboxes[$category]) {
            if ($entry.Box.Checked) {
                try {
                    & $entry.Func
                } catch {
                    Log "Error applying: $($entry.Box.Text) - $_"
                }
            }
        }
    }
    Log "`r`nAll selected optimizations applied."
})

$form.Controls.Add($btnApply)

# Run the Form
$form.ShowDialog()