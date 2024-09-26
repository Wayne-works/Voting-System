<aside class="main-sidebar">
  <section class="sidebar">
    <div class="user-panel">
      <div class="pull-left image">
        <img src="<?php echo 'images/profile.jpg'; ?>" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p><?php echo "VISITOR"; ?></p>
        <a><i class="fa fa-circle text-success"></i> Online</a>
      </div>
    </div>
    <ul class="sidebar-menu" data-widget="tree">
      <li class="header">REPORTS</li>
      <li class=""><a href="visitor_home.php"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
	  <li class="header">WEBSITE BACKGROUND</li>
      <li class=""><a href="visitoraboutus.php"><i class="fa fa-paper-plane"></i> <span>About Us</span></a></li>
      <li class=""><a href="#contact" data-toggle="modal"><i class="fa fa-phone"></i> <span>Contact Us</span></a></li>
    </ul>
  </section>
</aside>

<?php include 'visitor_includes/contact_modal.php'; ?>