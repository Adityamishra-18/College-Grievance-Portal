package com.collegegrievance.entity;

import java.sql.Timestamp;

public class Complaint {

    private int id;
    private String title;
    private String description;
    private String category;
    private String priority;
    private String department;
    private String status;
    private int studentId;
    private Integer assignedStaffId;
    private String adminRemark;
    private String staffRemark;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    public Complaint() {
    }

    public Complaint(String title, String description, String category, String priority, String department, int studentId) {

        this.title = title;
        this.description = description;
        this.category = category;
        this.priority = priority;
        this.department = department;
        this.studentId = studentId;
        this.status = "PENDING";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public Integer getAssignedStaffId() {
        return assignedStaffId;
    }

    public void setAssignedStaffId(Integer assignedStaffId) {
        this.assignedStaffId = assignedStaffId;
    }

    public String getAdminRemark() {
        return adminRemark;
    }

    public void setAdminRemark(String adminRemark) {
        this.adminRemark = adminRemark;
    }

    public String getStaffRemark() {
        return staffRemark;
    }

    public void setStaffRemark(String staffRemark) {
        this.staffRemark = staffRemark;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public Timestamp getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }

    @Override
    public String toString() {
        return "Complaint{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", category='" + category + '\'' +
                ", priority='" + priority + '\'' +
                ", department='" + department + '\'' +
                ", status='" + status + '\'' +
                ", studentId=" + studentId +
                ", assignedStaffId=" + assignedStaffId +
                '}';
    }
}