 
 <?php $__currentLoopData = $childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

   
        <li class="menu-item-has-children menu-item-has-children-<?php echo e($index + 2); ?>">
        
                <?php if(count($child -> children)): ?>
                    <a href="<?php echo e(url('danh-muc-san-pham/'.slugify($child -> title,'-').'/'.$child -> id)); ?>" >
                       
                        <?php echo e($child->title); ?> <i class="ion-ios-arrow-down ion-ios-arrow-down-khala"></i>
                    </a>
                <?php else: ?>
                     <a href="<?php echo e(url('danh-muc-san-pham/'.slugify($child -> title,'-').'/'.$child -> id)); ?>" >
                       
                       <?php echo e($child->title); ?>

                    </a>
                <?php endif; ?>
                
                <?php if(count($child->children)): ?>

                    
                    <ul class="category-mega-menu category-mega-menu-<?php echo e($index + 2); ?>">
                        <?php echo $__env->make('frontend.category.menu_category',['childs' => $child -> children], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </ul>
                <?php endif; ?>
            
       
           
    </li>

<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

 <?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/category/menu_category.blade.php ENDPATH**/ ?>