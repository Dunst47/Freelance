<?php $__env->startSection('links'); ?>
    <a class="navbar-brand" href="/add">Add a Student</a>
    <a class="navbar-brand" href="/payfee/">Pay Fees</a>
    <a class="navbar-brand" href="/payments">Payment History</a>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <br>
    <div class="container">
        <div class="jumbotron">
            <h3>Past Payments for <?php echo e($name); ?></h3>

            
        </div>
    </div>

    <div class="container">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">Transaction id</th>
                <th scope="col">Student Number</th>
                <th scope="col">Amount Paid</th>
                <th scope="col">Paid On</th>
            </tr>
            </thead>
            <tbody>
            <?php $__currentLoopData = $fees; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $fee): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    
                    <td><?php echo e($fee->id); ?></td>
                    <td><?php echo e($fee->student_id); ?></td>
                    <td><?php echo e($fee->amount); ?></td>
                    <td><?php echo e($fee->created_at->format('j M Y , g:ia')); ?></td>
                </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </tbody>
        </table>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('96539.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>