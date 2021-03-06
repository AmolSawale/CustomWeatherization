﻿<%@ page language="C#" masterpagefile="~/NewMETED/METED_Audit_MasterPage.master" autoeventwireup="true" inherits="METED_METED_Audit_Page12, App_Web_meted_audit_page13.aspx.e3603123" title="METED_Audit_Page12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/default.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body {
            font-size: 13px;
        }

        input[type="radio"] {
            margin-left: 5px;
        }

        input[type="checkbox"] {
            margin: 0 0 10px 5px;
        }

        .auto-style3 {
            height: 8px;
        }
        .auto-style4 {
            /*height: 95px;*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="top_links" runat="server" id="TopBtnDiv">
        <b><span id="spnFinal" runat="server" style="color: Red; font-size: medium;"></span>
        </b>
        <br />
        <asp:Button ID="btnUpdate" runat="server" Text="Save" class="top_btn" OnClick="btnUpdate_Click" />&nbsp;&nbsp;
        <asp:Button ID="btn_cancel" runat="server" Text="Cancel" class="top_btn" OnClick="btn_cancel_Click" />&nbsp;&nbsp;
        <asp:Button ID="btn_print" runat="server" Text="Print" class="top_btn" OnClientClick="ClickHereToPrintFull()" />
        <%--OnClientClick="ClickHereToPrintFull()"--%>
    </div>
    <div id="DivPrint">
        <div style="border: 1px solid #000; width: 100%;">
            <table width="100%" border="0" cellspacing="0" cellpadding="5">
                <tr>
                    <td valign="top">
                        <b>Fossil Fuel Heating Assessment</b>
                    </td>
                    <td>
                        <span style="font-size: 16px;">Primary Heating Source:</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Add additional duct run?</strong>
                        <asp:RadioButton ID="rdo_AddDuctRun_Yes" runat="server" GroupName="AddDuctRun" />
                        Yes
                        <asp:RadioButton ID="rdo_AddDuctRun_No" runat="server" GroupName="AddDuctRun" />
                        No
                    </td>
                    <td>
                        <asp:RadioButton ID="rdo_PriHeatSource_UtilityGas" runat="server" GroupName="PriHeatSource" />
                        1. Utility Gas
                        <asp:RadioButton ID="rdo_PriHeatSource_FuelOil" runat="server" GroupName="PriHeatSource" />
                        2. Fuel Oil
                        <asp:RadioButton ID="rdo_PriHeatSource_Wood" runat="server" GroupName="PriHeatSource" />
                        3. Wood
                        <asp:RadioButton ID="rdo_PriHeatSource_Coal" runat="server" GroupName="PriHeatSource" />
                        4. Coal
                        <asp:RadioButton ID="rdo_PriHeatSource_Solar" runat="server" GroupName="PriHeatSource" />
                        5. Solar
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:RadioButton ID="rdo_PriHeatSource_CitySteam" runat="server" GroupName="PriHeatSource" />
                        6. City Steam
                        <asp:RadioButton ID="rdo_PriHeatSource_BottleGas" runat="server" GroupName="PriHeatSource" />
                        7. Bottled Gas/ Propane
                        <asp:RadioButton ID="rdo_PriHeatSource_Kerosene" runat="server" GroupName="PriHeatSource" />
                        8. Kerosene
                        <asp:RadioButton ID="rdo_PriHeatSource_Other" runat="server" GroupName="PriHeatSource" />
                        99. Other (please describe)
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Would minor retrofitting reduce the need for supplemental electric space heating?
                        <asp:RadioButton ID="rdo_ElectricSpaceHeat_Yes" runat="server" GroupName="ElectricSpaceHeat" />
                        Yes
                        <asp:RadioButton ID="rdo_ElectricSpaceHeat_No" runat="server" GroupName="ElectricSpaceHeat" />
                        No
                    </td>
                </tr>
                <tr>
                    <td colspan="2" valign="top">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;">
                            <tr>
                                <td valign="top" style="width: 12%;">List measures installed
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_ListMeasureInstall" runat="server" Height="100px" Width="97%"
                                        TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <div style="border: 1px solid #000; width: 100%; margin-top: 10px;">
            <strong>Structure Assessment</strong>
            <br />
            A blower door test must be conducted if: the home has installed electric heat, AC
            is present with summer seasonal use of at least 2000 kWh, or electric space heaters
            are present with winter seasonal use of at least 2000 kWh. Use the <i><b>Blower Door
                Testing Information Sheet</b></i> to document the <i><b>Building Airflow Standard</b></i>
            (BAS), and the testing results.
            <table width="100%" border="0" cellspacing="0" cellpadding="5">
                <tr>
                    <td valign="top">If blower door test is not being completed, why?
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="txt_BlowerDoorTet_NotComplete" runat="server" Width="97%" Height="50px"
                            TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">If the blower door test indicates air sealing is to be performed, indicate location
                        of air leaks.
                    </td>
                </tr>
                <tr>
                    <td style="width: 20%;">Location of air leaks:
                    </td>
                    <td style="width: 25%;">
                        <asp:TextBox ID="txt_Location_1_AirLeaks" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;"
                            Width="200px"></asp:TextBox>
                    </td>
                    <td style="width: 20%;">Location of air leaks:
                    </td>
                    <td style="width: 25%;">
                        <asp:TextBox ID="txt_Location_2_AirLeaks" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;"
                            Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 20%;">Location of air leaks:
                    </td>
                    <td style="width: 25%;">
                        <asp:TextBox ID="txt_Location_3_AirLeaks" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;"
                            Width="200px"></asp:TextBox>
                    </td>
                    <td style="width: 20%;">Location of air leaks:
                    </td>
                    <td style="width: 25%;">
                        <asp:TextBox ID="txt_Location_4_AirLeaks" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;"
                            Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">Live Knob & Tube?
                        <asp:RadioButton ID="rdo_LiveKnobTube_Yes" runat="server" GroupName="LiveKnobTube" />
                        Yes
                        <asp:RadioButton ID="rdo_LiveKnobTube_No" runat="server" GroupName="LiveKnobTube" />
                        No &nbsp; &nbsp; Location:
                        <asp:TextBox ID="txt_LiveKnobTube_Location" runat="server" Style="border: none; border-bottom: solid 1px rgb(0, 0, 0); width: 270px; font-weight: normal; color: rgb(0, 0, 0);"></asp:TextBox>
                        &nbsp; &nbsp; Abatement:
                        <asp:RadioButton ID="rdo_Abatement_Yes" runat="server" GroupName="Abatement" />
                        Yes
                        <asp:RadioButton ID="rdo_Abatement_No" runat="server" GroupName="Abatement" />
                        No
                    </td>
                </tr>
                <tr>
                    <td colspan="4">Evidence of Mold?
                        <asp:RadioButton ID="rdo_EvidenceMold_Yes" runat="server" GroupName="EvidenceMold" />
                        Yes
                        <asp:RadioButton ID="rdo_EvidenceMold_No" runat="server" GroupName="EvidenceMold" />
                        No &nbsp; &nbsp; Evidence of moisture, water?
                        <asp:RadioButton ID="rdo_EvidenceMoisture_Yes" runat="server" GroupName="EvidenceMoisture" />
                        Yes
                        <asp:RadioButton ID="rdo_EvidenceMoisture_No" runat="server" GroupName="EvidenceMoisture" />
                        No &nbsp; &nbsp; Location:
                        <asp:TextBox ID="txt_EvidenceMoisture_Location" runat="server" Style="border: none; border-bottom: solid 1px rgb(0, 0, 0); width: 27%; font-weight: normal; color: rgb(0, 0, 0);"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td valign="top">Document any structural problems such as roof leaks, poor drainage, etc, here.
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="txt_AnyStructuralProb" runat="server" Width="97%" Height="100px"
                            TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <div style="border: 1px solid #000; width: 100%;">
            <strong>Mechanical Ventilation</strong>
            <table width="100%" border="0" cellspacing="0" cellpadding="5">
                <tr>
                    <td colspan="2">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="70px" class="auto-style3">
                                    <strong>Kitchen:</strong>
                                </td>
                                <td width="300px" class="auto-style3">Existing:
                                    <asp:RadioButton ID="rdo_Kitchen_Existing_Yes" runat="server" GroupName="Kitchen_Existing" />
                                    Yes
                                    <asp:RadioButton ID="rdo_Kitchen_Existing_No" runat="server" GroupName="Kitchen_Existing" />
                                    No
                                </td>

                                <td width="300px" class="auto-style3">Recirculates? 
                           
                                    <asp:RadioButtonList ID="CBL_Kitchen_Recirculates" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:RadioButtonList>

                                </td>
                                <td width="600px" class="auto-style3">Venting out Existing Fan
                       
                                    <asp:RadioButtonList ID="CBL_Kitchen_VentingFan" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:RadioButtonList>

                                </td>

                            </tr>

                           
                        </table>

                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                             <tr>

                               <td width="70px"></td>
                                <td width="200px">Adding Fan?&nbsp;&nbsp;
                                      <asp:RadioButtonList ID="CBL_Kitchen_AddingFan" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                          <asp:ListItem>Yes</asp:ListItem>
                                          <asp:ListItem>No</asp:ListItem>
                                      </asp:RadioButtonList>
                                </td>
                                <td width="150px">Size<asp:TextBox ID="txt_Kitchen_Size" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" Width="80px"></asp:TextBox>
                                </td>
                                <td width="200px">Range Hood&nbsp;&nbsp;

                                      <asp:RadioButtonList ID="CBL_Kitchen_RangeHood" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                          <asp:ListItem>Yes</asp:ListItem>
                                          <asp:ListItem>No</asp:ListItem>
                                      </asp:RadioButtonList>
                                </td>
                                <td width="250px">Through the Wall&nbsp;&nbsp;
                                    <asp:RadioButtonList ID="CBL_Kitchen_ThroughTheWall" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            
                            <tr>
                                <td width="70px"></td>
                                <td width="400px">Pre Fan Flow<asp:TextBox ID="txt_Kitchen_PreFanFlow" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" Width="80px"></asp:TextBox>
                                </td>
                                <td width="400px">Post Fan Flow<asp:TextBox ID="txt_Kitchen_PostFanFlow" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" Width="80px"></asp:TextBox>
                                </td>
                            </tr>
                            </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>
                                    <strong>
                                        <asp:TextBox ID="txt_Floor1" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" Width="20px"></asp:TextBox>
                                        &nbsp;Floor Bathrooms:</strong> Existing:
                        <asp:RadioButton ID="rdo_1stFloorBathrooms_Exist_Yes" runat="server" GroupName="1stFloorBathrooms_Exist" />
                                    Yes
                        <asp:RadioButton ID="rdo_1stFloorBathrooms_Exist_No" runat="server" GroupName="1stFloorBathrooms_Exist" />
                                    No
                        
                         &nbsp;
                        Venting out Existing Fan
                       
                                      <asp:RadioButtonList ID="CBL_1stFloorBathrooms_VentingFan" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                          <asp:ListItem>Yes</asp:ListItem>
                                          <asp:ListItem>No</asp:ListItem>
                                      </asp:RadioButtonList>
                                    &nbsp;
                        Light in existing:
                                    <asp:RadioButton ID="rdo_1stFloorBathrooms_LightExist_Yes" runat="server" GroupName="1stFloorBathrooms_LightExist" />
                                    Yes
                                    <asp:RadioButton ID="rdo_1stFloorBathrooms_LightExist_No" runat="server" GroupName="1stFloorBathrooms_LightExist" />
                                    No
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="80px" style="text-align:left"></td>
                                <td width="300px">Adding Fan
                                     
                                      <asp:RadioButtonList ID="CBL_1stFloorBathrooms_AddingFan" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                          <asp:ListItem>Yes</asp:ListItem>
                                          <asp:ListItem>No</asp:ListItem>
                                      </asp:RadioButtonList>
                                </td>

                                <td width="300px">If Adding Fan
                                    
                                      <asp:RadioButtonList ID="CBL_1stFloorBathrooms_IfAddingFan" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                          <asp:ListItem>Yes</asp:ListItem>
                                          <asp:ListItem>No</asp:ListItem>
                                      </asp:RadioButtonList>
                                </td>
                                <td width="300px">Does Replacement<br />
                                    requires light?
                                    <asp:RadioButton ID="rdo_1stFloorBathrooms_ReplaceLight_Yes" runat="server" GroupName="1stFloorBathrooms_ReplaceLight" />
                                    Yes
                                    <asp:RadioButton ID="rdo_1stFloorBathrooms_ReplaceLight_No" runat="server" GroupName="1stFloorBathrooms_ReplaceLight" />
                                    No
                                </td>
                                <td width="300px">Is the fan on its own switch?<br />
                                    <asp:RadioButton ID="rdo_1stFloorBathrooms_FanOwnSwitch_Yes" runat="server" GroupName="1stFloorBathrooms_FanOwnSwitch" />
                                    Yes
                                    <asp:RadioButton ID="rdo_1stFloorBathrooms_FanOwnSwitch_No" runat="server" GroupName="1stFloorBathrooms_FanOwnSwitch" />
                                    No
                                </td>

                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="80px"></td>
                                 <td width="300px">Size<asp:TextBox ID="txt_1stFloorBathrooms_Size" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" Width="80px"></asp:TextBox>
                                </td>
                                <td width="30px"></td>
                                <td width="400px">Pre Fan Flow<asp:TextBox ID="txt_1stFloorBathrooms_PreFanFlow" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" Width="80px"></asp:TextBox>
                                </td>
                                <td width="400px">Post Fan Flow<asp:TextBox ID="txt_1stFloorBathrooms_PostFanFlow" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" Width="80px"></asp:TextBox>
                                </td>
                               
                            </tr>
                        </table>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>
                                    <strong>&nbsp;<asp:TextBox ID="txt_Floor2" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" Width="20px"></asp:TextBox>
                                        Floor Bathrooms:</strong> Existing:
                        <asp:RadioButton ID="rdo_2ndFloorBathrooms_Exist_Yes" runat="server" GroupName="2ndFloorBathrooms_Exist" />
                                    Yes
                        <asp:RadioButton ID="rdo_2ndFloorBathrooms_Exist_No" runat="server" GroupName="2ndFloorBathrooms_Exist" />
                                    No 
                                
                         &nbsp;
                        Venting out Existing Fan
                       
                                      <asp:RadioButtonList ID="CBL_2stFloorBathrooms_VentingFan" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                          <asp:ListItem>Yes</asp:ListItem>
                                          <asp:ListItem>No</asp:ListItem>
                                      </asp:RadioButtonList>

                                    &nbsp;
                        Light in existing:
                                    <asp:RadioButton ID="rdo_2ndFloorBathrooms_LightExist_Yes" runat="server" GroupName="2ndFloorBathrooms_LightExist" />
                                    Yes
                                    <asp:RadioButton ID="rdo_2ndFloorBathrooms_LightExist_No" runat="server" GroupName="2ndFloorBathrooms_LightExist" />
                                    No
                                </td>
                            </tr>

                        </table>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="80px"></td>
                                <td width="300px">Adding Fan
                                    
                                      <asp:RadioButtonList ID="CBL_2stFloorBathrooms_AddingFan" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                          <asp:ListItem>Yes</asp:ListItem>
                                          <asp:ListItem>No</asp:ListItem>
                                      </asp:RadioButtonList>
                                </td>

                                <td width="300px">If Adding Fan
                                    
                                      <asp:RadioButtonList ID="CBL_2stFloorBathrooms_IfAddingFan" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                          <asp:ListItem>Yes</asp:ListItem>
                                          <asp:ListItem>No</asp:ListItem>
                                      </asp:RadioButtonList>
                                </td>

                                <td width="300px">Does Replacement<br />
                                    requires light?
                                    <asp:RadioButton ID="rdo_2ndFloorBathrooms_ReplaceLight_Yes" runat="server" GroupName="2ndFloorBathrooms_ReplaceLight" />
                                    Yes
                                    <asp:RadioButton ID="rdo_2ndFloorBathrooms_ReplaceLight_No" runat="server" GroupName="2ndFloorBathrooms_ReplaceLight" />
                                    No
                                </td>

                                <td width="300px">Is the fan on its own switch?<br />
                                    <asp:RadioButton ID="rdo_2ndFloorBathrooms_FanOwnSwitch_Yes" runat="server" GroupName="2ndFloorBathrooms_FanOwnSwitch" />
                                    Yes
                                    <asp:RadioButton ID="rdo_2ndFloorBathrooms_FanOwnSwitch_No" runat="server" GroupName="2ndFloorBathrooms_FanOwnSwitch" />
                                    No
                                </td>

                            </tr>

                        </table>

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="80px"></td>
                                <td width="300px">Size<asp:TextBox ID="txt_2stFloorBathrooms_Size" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" Width="80px"></asp:TextBox>
                                </td>
                                <td width="30px"></td>
                                <td width="400px">Pre Fan Flow<asp:TextBox ID="txt_2stFloorBathrooms_PreFanFlow" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" Width="80px"></asp:TextBox>
                                </td>
                                <td width="400px">Post fan Flow<asp:TextBox ID="txt_2stFloorBathrooms_PostFanFlow" runat="server" Style="border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" Width="80px"></asp:TextBox>
                                </td>
                                
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td width="20%">Comments:
                    </td>
                    <td width="75%">
                        <asp:TextBox ID="txt_2ndFloorBathrooms_Comment" runat="server" Width="97%" Height="100px"
                            TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <%--   <tr>
                    <td>
                        <strong>If adding a fan:</strong>
                    </td>
                    <td>Ceiling:
                        <asp:RadioButton ID="rdo_AddFan_Ceiling_Yes" runat="server" GroupName="AddFan_Ceiling" />
                        Yes
                        <asp:RadioButton ID="rdo_AddFan_Ceiling_No" runat="server" GroupName="AddFan_Ceiling" />
                        No &nbsp; &nbsp; Size:<asp:TextBox ID="txt_AddFan_Ceiling_Size" runat="server" Style="border: none; border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); width: 90px;"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;Location:<asp:TextBox ID="txt_Ceiling_Location1" runat="server"
                            Style="border: none; border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); width: 170px;"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>&nbsp;Wall:
                        <asp:RadioButton ID="rdo_AddFan_Wall_Yes" runat="server" GroupName="AddFan_Wall" />
                        Yes
                        <asp:RadioButton ID="rdo_AddFan_Wall_No" runat="server" GroupName="AddFan_Wall" />
                        No &nbsp; &nbsp; Size:<asp:TextBox ID="txt_AddFan_Wall_Size" runat="server" Style="border: none; border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); width: 90px;"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;Location:<asp:TextBox ID="txt_Wall_Location" runat="server" Style="border: none; border-bottom: solid 1px rgb(0, 0, 0); font-weight: normal; color: rgb(0, 0, 0); width: 170px;"></asp:TextBox>
                    </td>
                </tr>--%>
            </table>
        </div>
    </div>

    <script type="text/javascript">

        $(function () {
            document.getElementById('Page13').classList.add("ui-selected");
        });

        function ClickHereToPrintFull() {


            var disp_setting = "toolbar=yes,location=no,directories=yes,menubar=yes,";
            disp_setting += "scrollbars=yes,width=650px, height=600px, left=100, top=25";
            var content_vlue = document.getElementById('DivPrint').innerHTML;
            var docprint = window.open("", "", disp_setting);
            docprint.document.open();
            docprint.document.write('<html><head><title>Custom Weatherization</title> ');
            docprint.document.write('</head><body onLoad="self.print()"><center>');
            docprint.document.write(content_vlue);
            docprint.document.write('</center></body></html>');
            docprint.document.close();
            docprint.focus();
        }
    </script>

</asp:Content>
