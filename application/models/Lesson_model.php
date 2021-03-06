<?php

 
class Lesson_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get lesson by lessonID
     */
    function get_lesson($lessonID)
    {
        return $this->db->get_where('lessons',array('lessonID'=>$lessonID))->row_array();
    }
        
    /*
     * Get all lessons
     */
    function get_all_lessons()
    {
        $query = $this->db->query(
            "SELECT l.lessonID, s.subjectCode, l.lessonFile, l.lessonDesc, l.lessonTitle, l.dateUploaded, l.dateModified, l.status from lessons l
            INNER JOIN classes c ON l.classID = c.classID
            INNER JOIN subjects s ON s.subjectID = c.subjectID"
        );
        return $query->result_array();
    }
        
    /*
     * function to add new lesson
     */
    function add_lesson($params)
    {
        $this->db->insert('lessons',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update lesson
     */
    function update_lesson($lessonID,$params)
    {
        $this->db->where('lessonID',$lessonID);
        return $this->db->update('lessons',$params);
    }
    
    /*
     * function to delete lesson
     */
    function delete_lesson($lessonID)
    {
        $this->db->where('lessonID',$lessonID);
        return $this->db->update('lessons',$params);
    }

    function restore_lesson($lessonID)
    {
        $this->db->where('lessonID',$lessonID);
        return $this->db->update('lessons',$params);
    }
}
