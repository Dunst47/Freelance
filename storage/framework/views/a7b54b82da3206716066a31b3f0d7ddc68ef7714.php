    <?php $__env->startSection('content'); ?>
        <br>
        <div class="container">
            <div class="jumbotron align-content-center">
                <h1 >Fees Management System</h1>
            </div>
        </div

        <div class="container">
            <a href="/add"><button type="button"  class="btn btn-primary btn-lg btn-block">Add a student</button>
            </a>
            <br>
            <a href="/payfee">
                <button type="button" class="btn btn-success btn-lg btn-block">Pay fees</button>
            </a>
            <br>
            <a href="/payments">
                <button type="button" class="btn btn-info btn-lg btn-block">Show Student Payments</button>
            </a>

        </div>
        <br>
        <div class="container">
            <div class="jumbotron">
                    <h2>Total amount paid = <strong><?php echo e($fee); ?></strong></h2>
            </div>
        </div>
        <div class="container">
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Student Number</th>
                    <th scope="col">Full Name</th>
                    <th scope="col">Balance</th>
                    <th scope="col">Gender</th>
                    <th scope="col">address</th>
                </tr>
                </thead>
                <tbody>
                <?php $__currentLoopData = $students; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $student): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    
                    <td><?php echo e($student->id); ?></td>
                    <td><?php echo e($student->fullName); ?></td>
                    <td><?php echo e($student->Balance); ?></td>
                    <td><?php echo e($student->gender); ?></td>
                    <td><?php echo e($student->Address); ?></td>
                </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                </tbody>
            </table>
        </div>




    <?php $__env->stopSection(); ?>

<?php echo $__env->make('96539.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>