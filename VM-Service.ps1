Configuration ServiceTest {
    Node $PC {

        Service 'VMware Horizon Client' {
            Name = "client_service"
            State = "Stopped"
            StartupType = "Manual"
        }
    }
}
$PC = "DESKTOP-HEF1AAF"
ServiceTest -OutputPath c:\dsc\out\ServiceTest
Start-DscConfiguration -Path c:\dsc\out\ServiceTest -Wait -Verbose -Force