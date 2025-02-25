// report 50000 "Test Report"
// {
//     Caption = 'Test Report';
//     UsageCategory = ReportsAndAnalysis;
//     ApplicationArea = All;
//     RDLCLayout = 'TestReport.rdl';
//     DefaultLayout = RDLC;
    
//     dataset
//     {
//         dataitem("Test table"; "Test Table")
//         {
//             column(Entry_No_; "Entry No."){}
//             column(Name;Name){}
//             column(Customer_NickName; txtCustNickName){ }

//             trigger OnAfterGetRecord()
//             begin
//                 txtCustNickName := '';
//                 recCustomer.Reset();
//                 recCustomer.SetRange("No.", "Test table".Name);
//                 if recCustomer.FindFirst() then
//                     txtCustNickName := recCustomer."Customer NickName";
//             end;               
//         }
//     }

//     var
//         recCustomer:Record Customer;
//         txtCustNickName: Text;
// }