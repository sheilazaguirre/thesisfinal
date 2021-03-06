<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */
 
class Classlist extends CI_Controller{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Classlist_model');
    } 

    /*
     * Listing of classlist
     */
    function index()
    {
        $params['limit'] = RECORDS_PER_PAGE; 
        $params['offset'] = ($this->input->get('per_page')) ? $this->input->get('per_page') : 0;
        
        $config = $this->config->item('pagination');
        $config['base_url'] = site_url('classlist/index?');
        $config['total_rows'] = $this->Classlist_model->get_all_classlist_count();
        $this->pagination->initialize($config);

        $data['classlist'] = $this->Classlist_model->get_all_classlist($params);
        
        $data['_view'] = 'classlist/index';
        $this->load->view('layouts/main',$data);
    }

    /*
     * Adding a new classlist
     */
    function add()
    {   
        $this->load->library('form_validation');

		$this->form_validation->set_rules('classID','ClassID','required|integer');
		$this->form_validation->set_rules('studentID','StudentID','required|integer');
		$this->form_validation->set_rules('remarks','Remarks','required|max_length[200]');
		$this->form_validation->set_rules('dateAdded','DateAdded','required|integer');
		
		if($this->form_validation->run())     
        {   
            $params = array(
				'classID' => $this->input->post('classID'),
				'studentID' => $this->input->post('studentID'),
				'remarks' => $this->input->post('remarks'),
				'dateAdded' => $this->input->post('dateAdded'),
            );
            
            $classlist_id = $this->Classlist_model->add_classlist($params);
            redirect('classlist/index');
        }
        else
        {
			$this->load->model('Class_model');
			$data['all_classes'] = $this->Class_model->get_all_classes();

			$this->load->model('Student_model');
			$data['all_students'] = $this->Student_model->get_all_students();
            
            $data['_view'] = 'classlist/add';
            $this->load->view('layouts/main',$data);
        }

        
    }  

    /*
     * Editing a classlist
     */
    function edit($classListID)
    {   
        // check if the classlist exists before trying to edit it
        $data['classlist'] = $this->Classlist_model->get_classlist($classListID);
        
        if(isset($data['classlist']['classListID']))
        {
            $this->load->library('form_validation');

			$this->form_validation->set_rules('classID','ClassID','required|integer');
			$this->form_validation->set_rules('studentID','StudentID','required|integer');
			$this->form_validation->set_rules('remarks','Remarks','required|max_length[200]');
			$this->form_validation->set_rules('dateAdded','DateAdded','required|integer');
		
			if($this->form_validation->run())     
            {   
                $params = array(
					'classID' => $this->input->post('classID'),
					'studentID' => $this->input->post('studentID'),
					'remarks' => $this->input->post('remarks'),
					'dateAdded' => $this->input->post('dateAdded'),
                );

                $this->Classlist_model->update_classlist($classListID,$params);            
                redirect('classlist/index');
            }
            else
            {
				$this->load->model('Class_model');
				$data['all_classes'] = $this->Class_model->get_all_classes();

				$this->load->model('Student_model');
				$data['all_students'] = $this->Student_model->get_all_students();

                $data['_view'] = 'classlist/edit';
                $this->load->view('layouts/main',$data);
            }
        }
        else
            show_error('The classlist you are trying to edit does not exist.');
    } 

    /*
     * Deleting classlist
     */
    function remove($classListID)
    {
        $classlist = $this->Classlist_model->get_classlist($classListID);

        // check if the classlist exists before trying to delete it
        if(isset($classlist['classListID']))
        {
            $this->Classlist_model->delete_classlist($classListID);
            redirect('classlist/index');
        }
        else
            show_error('The classlist you are trying to delete does not exist.');
    }
    
}
