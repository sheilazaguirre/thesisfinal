<div class="row">
    <div class="col-md-12">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Applicant Add</h3>
            </div>
            <?php echo form_open('reg_applicant/add'); ?>
            <div class="box-body">
                <div class="row clearfix">
                    <div class="col-md-6">
                        <label for="courseID" class="control-label"><span class="text-danger">*</span>Course</label>
                        <div class="form-group">
                            <select name="courseID" class="form-control">
                                <option value="">Select Course...</option>
                                <?php
                                $course_values = array(
                                    '1'=>'Bachelor of Science in Computer Science',
                                    '2'=>'Bachelor of Secondary Education - Major in Mathematics',
                                    '3'=>'Bachelor of Elementary Education',
                                    '3'=>'Bachelor of Secondary Education - Major in Filipino',
                                    '5'=>'Bachelor of Science in Business Administration - Major in Management',
                                    '6'=>'Bachelor of Secondary Education - Science & Health',
                                );

                                foreach($course_values as $value => $display_text)
                                {
                                    $selected = ($value == $this->input->post('courseID')) ? ' selected="selected"' : "";

                                    echo '<option value="'.$value.'" '.$selected.'>'.$display_text.'</option>';
                                }
                                ?>
                            </select>
                            <span class="text-danger"><?php echo form_error('courseID');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="studentstat" class="control-label"><span class="text-danger">*</span>Student Status</label>
                        <div class="form-group">
                            <select name="studentstat" class="form-control">
                                <option value="">Select Student Status...</option>
                                <?php
                                $studentstat_values = array(
                                    'For Interview'=>'For Interview',
                                    'For Examination'=>'For Examination',
                                    'Pending'=>'Pending',
                                );

                                foreach($studentstat_values as $value => $display_text)
                                {
                                    $selected = ($value == $this->input->post('studentstat')) ? ' selected="selected"' : "";

                                    echo '<option value="'.$value.'" '.$selected.'>'.$display_text.'</option>';
                                }
                                ?>
                            </select>
                            <span class="text-danger"><?php echo form_error('studentstat');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="apfn" class="control-label"><span class="text-danger">*</span>First Name</label>
                        <div class="form-group">
                            <input type="text" name="apfn" value="<?php echo $this->input->post('apfn'); ?>" class="form-control" id="apfn" />
                            <span class="text-danger"><?php echo form_error('apfn');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="apln" class="control-label"><span class="text-danger">*</span>Last Name</label>
                        <div class="form-group">
                            <input type="text" name="apln" value="<?php echo $this->input->post('apln'); ?>" class="form-control" id="apln" />
                            <span class="text-danger"><?php echo form_error('apln');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="apmn" class="control-label"><span class="text-danger">*</span>Middle Name</label>
                        <div class="form-group">
                            <input type="text" name="apmn" value="<?php echo $this->input->post('apmn'); ?>" class="form-control" id="apmn" />
                            <span class="text-danger"><?php echo form_error('apmn');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="email" class="control-label"><span class="text-danger">*</span>Email Address</label>
                        <div class="form-group">

                            <input type="email" name="email" placeholder="Ex: example@yahoo.com" value="<?php echo $this->input->post('email'); ?>" class="form-control" id="email" />
                            <span class="text-danger"><?php echo form_error('email');?></span>
                            <span class="text-danger"><?php echo $error2;?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="mobile" class="control-label"><span class="text-danger">*</span>Mobile</label>
                        <div class="form-group">
                            <input type="tel" pattern="[0-9-() ]*" placeholder="Ex: (0920)999-9999" name="mobile" value="<?php echo $this->input->post('mobile'); ?>" data-inputmask='"mask": "(0999)999-9999"' class="form-control" id="mobile" data-mask required />
                            <span class="text-danger"><?php echo form_error('mobile');?></span>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label for="birthdate" class="control-label"><span class="text-danger">*</span>Birthdate</label>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" name="birthdate" value="<?php echo $this->input->post('birthdate'); ?>" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask required />
                            </div>
                            <span class="text-danger"><?php echo $error;?></span>
                            <!-- /.input group -->
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="birthplace" class="control-label"><span class="text-danger">*</span>Birthplace</label>
                        <div class="form-group">
                            <input type="text" name="birthplace" value="<?php echo $this->input->post('birthplace'); ?>" class="form-control" id="birthplace" />
                            <span class="text-danger"><?php echo form_error('birthplace');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="gender" class="control-label"><span class="text-danger">*</span>Gender</label>
                        <div class="form-group">
                        <select name="gender" class="form-control">
                                <option value="">Select Gender...</option>
                                <?php
                                $gender_values = array(
                                    'Male'=>'Male',
                                    'Female'=>'Female',
                                );
                                foreach($gender_values as $value => $display_text)
                                {
                                    $selected = ($value == $this->input->post('gender')) ? ' selected="selected"' : "";

                                    echo '<option value="'.$value.'" '.$selected.'>'.$display_text.'</option>';
                                }
                                ?>
                            </select>
                            <span class="text-danger"><?php echo form_error('gender');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="civstat" class="control-label"><span class="text-danger">*</span>Civil Status</label>
                        <div class="form-group">
                        <select name="civstat" class="form-control">
                                <option value="">Select Status...</option>
                                <?php
                                $civstat_values = array(
                                    'Single'=>'Single',
                                    'Married'=>'Married',
                                    'Widowed'=>'Widowed',
                                );

                                foreach($civstat_values as $value => $display_text)
                                {
                                    $selected = ($value == $this->input->post('civstat')) ? ' selected="selected"' : "";

                                    echo '<option value="'.$value.'" '.$selected.'>'.$display_text.'</option>';
                                }
                                ?>
                            </select>
                            <span class="text-danger"><?php echo form_error('civstat');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="nationality" class="control-label"><span class="text-danger">*</span>Nationality</label>
                        <div class="form-group">
                            <select name="nationality" class="form-control">
                                <option value="">Select Gender...</option>
                                <?php
                                $nationality_values= array(
                                    'Filipino'=>'Filipino',
                                    'Chinese'=>'Chinese',
                                );

                                foreach($nationality_values as $value => $display_text)
                                {
                                    $selected = ($value == $this->input->post('nationality')) ? ' selected="selected"' : "";

                                    echo '<option value="'.$value.'" '.$selected.'>'.$display_text.'</option>';
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="religion" class="control-label"><span class="text-danger">*</span>Religion</label>
                        <div class="form-group">
                            <input type="text" name="religion" value="<?php echo $this->input->post('religion'); ?>" class="form-control" id="religion" />
                            <span class="text-danger"><?php echo form_error('religion');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="addcity" class="control-label"><span class="text-danger">*</span>City Address</label>
                        <div class="form-group">
                            <input type="text" name="addcity" value="<?php echo $this->input->post('addcity'); ?>" class="form-control" id="addcity" />
                            <span class="text-danger"><?php echo form_error('addcity');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="addprov" class="control-label"><span class="text-danger"></span>Provincial Address</label>
                        <div class="form-group">
                            <input type="text" name="addprov" value="<?php echo $this->input->post('addprov'); ?>" class="form-control" id="addprov" />
                            <span class="text-danger"><?php echo form_error('addprov');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="elemschool" class="control-label"><span class="text-danger">*</span>Elementary School</label>
                        <div class="form-group">
                            <input type="text" name="elemschool" value="<?php echo $this->input->post('elemschool'); ?>" class="form-control" id="elemschool" />
                            <span class="text-danger"><?php echo form_error('elemschool');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="secschool" class="control-label"><span class="text-danger">*</span>Secondary School</label>
                        <div class="form-group">
                            <input type="text" name="secschool" value="<?php echo $this->input->post('secschool'); ?>" class="form-control" id="secschool" />
                            <span class="text-danger"><?php echo form_error('secschool');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="tertschool" class="control-label"><span class="text-danger">*</span>Tertiary School</label>
                        <div class="form-group">
                            <input type="text" name="tertschool" value="<?php echo $this->input->post('tertschool'); ?>" class="form-control" id="tertschool" />
                            <span class="text-danger"><?php echo form_error('tertschool');?></span>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <label for="reasonleave" class="control-label"><span class="text-danger">*</span>Reason for Leaving School</label>
                        <div class="form-group">
                            <textarea name="reasonleave" class="form-control" id="reasonleave"><?php echo $this->input->post('reasonleave'); ?></textarea>
                            <span class="text-danger"><?php echo form_error('reasonleave');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="guardianame" class="control-label">Guardian Name</label>
                        <div class="form-group">
                            <input type="text" name="guardianame" value="<?php echo $this->input->post('guardianame'); ?>" class="form-control" id="guardianame" />
                            <span class="text-danger"><?php echo form_error('guardianame');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="relationship" class="control-label">Relationship</label>
                        <div class="form-group">
                            <input type="text" name="relationship" value="<?php echo $this->input->post('relationship'); ?>" class="form-control" id="relationship" />
                            <span class="text-danger"><?php echo form_error('relationship');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="fathername" class="control-label"><span class="text-danger">*</span>Father Name</label>
                        <div class="form-group">
                            <input type="text" name="fathername" value="<?php echo $this->input->post('fathername'); ?>" class="form-control" id="fathername" />
                            <span class="text-danger"><?php echo form_error('fathername');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="fatherocc" class="control-label"><span class="text-danger">*</span>Father's Occupation</label>
                        <div class="form-group">
                            <input type="text" name="fatherocc" value="<?php echo $this->input->post('fatherocc'); ?>" class="form-control" id="fatherocc" />
                            <span class="text-danger"><?php echo form_error('fatherocc');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="mothername" class="control-label"><span class="text-danger">*</span>Mothers' Name</label>
                        <div class="form-group">
                            <input type="text" name="mothername" value="<?php echo $this->input->post('mothername'); ?>" class="form-control" id="mothername" />
                            <span class="text-danger"><?php echo form_error('mothername');?></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="motherocc" class="control-label"><span class="text-danger">*</span>Mother Occupation</label>
                        <div class="form-group">
                            <input type="text" name="motherocc" value="<?php echo $this->input->post('motherocc'); ?>" class="form-control" id="motherocc" />
                            <span class="text-danger"><?php echo form_error('motherocc');?></span>
                        </div>
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