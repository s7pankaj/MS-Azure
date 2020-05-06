#####################################################################
# Get-User_Listfrom_Office365.ps1
# Version 1.0
#
# Export the user details from office 365 Online.
#                ___________  ____
# __ __ __ _   /_  /_  / _ \/_  /
# \ \ //  ' \   / / / / // / / / 
#/_\_\/_/_/_/__/_/ /_/\___/ /_/  
#          /___/                 

# Pankaj Singh (2020-2020)
# 
#####################################################################



Get-User -ResultSize Unlimited | Where-Object {  $_.RecipientType -eq 'UserMailbox'-and $_.AccountDisabled -eq $false -and $_.WindowsEmailAddress -like '*@domain.*' } | Select WindowsEmailAddress,Name,FirstName,LastName,StreetAddress,City,StateorProvince,PostalCode,Phone,MobilePhone,Pager,HomePhone,Company,Title,OtherTelephone,Department,CountryOrRegion,Fax,Initials,Notes,Office,Manager | Export-Csv C:\Temp\Script_Export01.csv -Encoding Unicode -NoClobber -NoTypeInformation -Confirm:$false -Force