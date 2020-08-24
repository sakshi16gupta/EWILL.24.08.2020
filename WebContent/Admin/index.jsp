<jsp:include page="nav.html"></jsp:include>
<div id="content">


<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
      <ul class="quick-actions">
        <li class="bg_lb"> <a href="index.jsp"> <i class="icon-dashboard"></i>My Dashboard </a> </li>
        <li class="bg_lg"> <a href="view-user.jsp"> <i class="icon-signal"></i>User</a> </li>
        <li class="bg_ly"> <a href="view-advisors.jsp"> <i class="icon-inbox"></i>Advisors</a> </li>
        <li class="bg_lo"> <a href="view-advisors-type.jsp"> <i class="icon-th"></i>Advisors Type</a></li>
        <li class="bg_lb"> <a href="view-bank.jsp"> <i class="icon-pencil"></i>Bank</a> </li>
        <li class="bg_lo"> <a href="view-credit-card.jsp"> <i class="icon-th"></i>Credit Card</a></li>
        <li class="bg_ls"> <a href="view-deposits.jsp"> <i class="icon-fullscreen"></i>Deposits</a> </li>
        <li class="bg_lg"> <a href="view-documents-type.jsp"> <i class="icon-signal"></i>Documents Type</a> </li>
        <li class="bg_lo"> <a href="view-documents.jsp"> <i class="icon-th-list"></i>Documents</a> </li>
        <li class="bg_lg"> <a href="view-contacts.jsp"> <i class="icon-signal"></i>Contacts</a> </li>
        <li class="bg_ls"> <a href="view-emergency.jsp"> <i class="icon-tint"></i>Emergency</a> </li>
        <li class="bg_ly"> <a href="view-insurance.jsp"> <i class="icon-inbox"></i>Insurance</a> </li>
        <li class="bg_lb"> <a href="view-society_member.jsp"> <i class="icon-pencil"></i>Loan</a> </li>
        <li class="bg_lg"> <a href="view-society_code.jsp"> <i class="icon-calendar"></i>Locker</a> </li>
        <li class="bg_lr"> <a href="view-society_info.jsp"> <i class="icon-info-sign"></i>Login</a> </li>
		<li class="bg_ly"> <a href="view-state.jsp"> <i class="icon-inbox"></i>Mediclaim</a> </li>
		<li class="bg_lg"> <a href="view-category.jsp"> <i class="icon-signal"></i>Personal details</a> </li>
        <li class="bg_ly"> <a href="view-city.jsp"> <i class="icon-inbox"></i>Property</a> </li>
        <li class="bg_lo"> <a href="view-event_notification.jsp"> <i class="icon-th"></i>Savings</a></li>
      </ul>
    </div>
   </div>
</div>

<script src="js/excanvas.min.js"></script> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.flot.min.js"></script> 
<script src="js/jquery.flot.resize.min.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/fullcalendar.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.dashboard.js"></script> 
<script src="js/jquery.gritter.min.js"></script> 
<script src="js/matrix.interface.js"></script> 
<script src="js/matrix.chat.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.form_validation.js"></script> 
<script src="js/jquery.wizard.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.popover.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script> 

<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {
      
          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();            
          } 
          // else, send page to designated URL            
          else {  
            document.location.href = newURL;
          }
      }
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
</body>
</html>