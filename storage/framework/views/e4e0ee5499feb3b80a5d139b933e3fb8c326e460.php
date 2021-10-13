 
 <?php $__currentLoopData = $childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
 
 <ul>
    <li>
        <div class="sidebar-widget-list-left">
            <a href="<?php echo e(url('cua-hang?category_id='.$child -> id)); ?>"><?php echo e($child->title); ?><span>(17)</span> </a>
            
        </div>
        <?php if(count($child->children)): ?>
        	
            <?php echo $__env->make('frontend.product.menusub',['childs' => $child -> children], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
           
        <?php endif; ?>
    </li>
    
    
</ul>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/product/menusub.blade.php ENDPATH**/ ?>