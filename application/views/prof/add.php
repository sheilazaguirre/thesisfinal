<div class="row">
    <div class="col-md-6">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title"></h3>
            </div>
            <?php echo form_open('prof/add'); ?>
          	<div class="box-body">
          		<div class="row clearfix">
					<div class="col-md-12">
						<label for="subjectID" class="control-label"><span class="text-danger">*</span>Subject</label>
						<div class="form-group">
							<select name="subjectID" class="form-control">
								<option value="">Select a Subject</option>
								<?php 
								foreach($all_subjects as $subject)
								{
									$selected = ($subject['subjectID'] == $this->input->post('subjectID')) ? ' selected="selected"' : "";

									echo '<option value="'.$subject['subjectID'].'" '.$selected.'>'.$subject['subjectCode'].'</option>';
								} 
								?>
							</select>
							<span class="text-danger"><?php echo form_error('subjectID');?></span>
						</div>
					</div>
					<div class="col-md-12">
                        <label for="remarks" class="control-label">Remarks</label>
                        <div class="form-group">
                            <textarea name="remarks" class="form-control" id="remarks"><?php echo $this->input->post('remarks'); ?></textarea>
                        </div>
                    </div>
				</div>
			</div>
          	<div class="box-footer">
            	<button type="submit" class="btn btn-success">
            		<i class="fa fa-check"></i> Save
            	</button>
          	</div>
            <?php echo form_close(); ?>
      	</div>
    </div>
</div>