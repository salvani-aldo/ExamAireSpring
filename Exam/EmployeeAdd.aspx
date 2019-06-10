<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeAdd.aspx.cs" Inherits="Exam.EmployeeAdd" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class="form-group" hidden id="errorMessage">
            <label class="control-label" style="color:red;">First Name, Last Name and Hired Date are required fields.</label>
        </div> 
    </div>
    <div style="margin-top: 20px;">
        <div class="form-group">
            <label class="control-label">First Name</label>
            <asp:TextBox runat="server" class="form-control" ID="firstName" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="firstName" ErrorMessage="First name is Required " ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="control-label">Last Name</label>
            <asp:TextBox runat="server" class="form-control" ID="lastName" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="lastName" ErrorMessage="Last name is Required " ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="control-label">Phone</label>
            <input runat="server" placeholder="(XXX) XXX-XXXX" class="form-control" id="phoneText" />
            <asp:RegularExpressionValidator runat="server" ErrorMessage="Invalid Phone No." ControlToValidate="phoneText" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))\d{3}-\d{4}"></asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <label class="control-label">Zip</label>
            <asp:TextBox runat="server" class="form-control" ID="zip" TextMode="Number" />
        </div>
        <div class="form-group">
            <label class="control-label">Hired Date</label>
            <asp:TextBox runat="server" class="form-control" type="date" ID="hiredDate" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="hiredDate" ErrorMessage="Hire date is Required " ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Button runat="server" ClientIDMode="Static" ID="createRecord" class="btn btn-default btn-primary" Text="Add" OnClick="create_Click" />
        </div>
    </div>
</asp:Content>
