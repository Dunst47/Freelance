<?php $__env->startSection('links'); ?>
    <a class="navbar-brand" href="/add">Add a Student</a>
    <a class="navbar-brand" href="/payfee/">Pay Fees</a>
    <a class="navbar-brand" href="/payments">Payment History</a>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <br>
    <div class="container">
        <div class="jumbotron align-content-center" >
            <h1>AMS</h1>
        </div>
    </div>

    <div class="container">
        <form class="form-horizontal" method="post" action="/add/student">
            <?php echo e(csrf_field()); ?>

            <div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">Full Name</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" name="fullName" placeholder="Full Name of student">
                </div>
            </div>
            <div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">Date of Birth</label>
                <div class="col-sm-5">
                    <input type="date" class="form-control" name="DateOfBirth" >
                </div>
            </div>
            <div class="form-group">
                <label for="inputAddress" class="col-sm-2 control-label">Address</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" name="address" placeholder="Address">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-5">
                    <div class="radio">
                        <label class="radio-inline"><input type="radio" name="gender" value="Male">Male</label>
                        <label class="radio-inline"><input type="radio" name="gender" value="Female">Female</label>
                    </div>
                </div>
            </div>
            <input type="hidden" name="balance" value="200000">
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-5">
                    <input type="submit" class="btn btn-default" value="Add Student">
                </div>
            </div>
        </form>

    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('96539.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>