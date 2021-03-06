<?php
 
class Assignment_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get assignment by assignID
     */
    function get_assignment($assignID)
    {
        return $this->db->get_where('assignments',array('assignID'=>$assignID))->row_array();
    }
        
    /*
     * Get all assignments
     */
    function get_all_assignments()
    {
        $query = $this->db->query(
            "SELECT a.assignID, s.subjectCode, a.assignFile, a.assignDesc, a.assignTitle, a.dateUploaded, a.status from assignments a
            INNER JOIN classes c ON a.classID = c.classID
            INNER JOIN subjects s ON s.subjectID = c.subjectID"
        );
        return $query->result_array();
    }
        
    /*
     * function to add new assignment
     */
    function add_assignment($params)
    {
        $this->db->insert('assignments',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update assignment
     */
    function update_assignment($assignID,$params)
    {
        $this->db->where('assignID',$assignID);
        return $this->db->update('assignments',$params);
    }
    
    /*
     * function to delete assignment
     */
    function delete_assignment($assignID)
    {
        $this->db->where('assignID',$assignID);
        return $this->db->update('assignments',$params);
    }

    function restore_assignment($assignID)
    {
        $this->db->where('assignID',$assignID);
        return $this->db->update('assignments',$params);
    }
}
