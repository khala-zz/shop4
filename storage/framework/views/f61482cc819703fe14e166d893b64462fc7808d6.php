<!-- tên banner -->
<div class="form-group <?php echo e($errors->has('title') ? 'has-error' : ''); ?>">
    <label for="title" class="control-label"><?php echo e('Tên Banner'); ?></label>
    <input class="form-control" name="title" type="text" id="title" value="<?php echo e(isset($banner->title) ? $banner->title : old('title')); ?>" required>
    <?php echo $errors->first('title', '<p class="help-block">:message</p>'); ?>

</div>

<!-- link -->
<div class="form-group <?php echo e($errors->has('link') ? 'has-error' : ''); ?>">
    <label for="link" class="control-label"><?php echo e('Link'); ?></label>
    <input class="form-control" name="link" type="text" id="link" value="<?php echo e(isset($banner->link) ? $banner->link : old('link')); ?>" >
    <?php echo $errors->first('link', '<p class="help-block">:message</p>'); ?>

</div>


<!-- image -->
<?php if(isset($banner->image) && !empty($banner->image)): ?>
    <img src="<?php echo e(url('uploads/banners/' . $banner->image)); ?>" width="200" height="180"/>
<?php endif; ?>

<div class="form-group <?php echo e($errors->has('image') ? 'has-error' : ''); ?>">
    <label for="image" class="control-label"><?php echo e('Hình ảnh'); ?></label>
    <input class="form-control" name="image" type="file" id="image" >
    <?php echo $errors->first('image', '<p class="help-block">:message</p>'); ?>

</div>

<!-- is active -->

<div class="form-group <?php echo e($errors->has('is_active') ? 'has-error' : ''); ?>">
    <label for="is_active" class="control-label"><?php echo e('Hiển thị'); ?></label>
    <select id="is_active" name="is_active" class="form-control" >
                        <option value="1" <?php echo e($formMode == 'create'?"selected":($banner->is_active == 1?"selected":"")); ?> >Có</option>
                        <option value="0" <?php echo e($formMode == 'edit'?($banner->is_active == 0?"selected":""):""); ?>>Không</option>
                      </select>
    <?php echo $errors->first('is_active', '<p class="help-block">:message</p>'); ?>

</div>










   





<div class="form-group">
    <input class="btn btn-primary" type="submit" value="<?php echo e($formMode === 'edit' ? 'Cập nhật' : 'Lưu'); ?>">
</div>

<?php /**PATH C:\xampp\htdocs\shop3\resources\views/admin/pages/banner/form.blade.php ENDPATH**/ ?>