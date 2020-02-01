<?php

// Build array to display on page
function get_contacts_by_category($employeeID) {
    global $db;
    $query = 'SELECT * FROM contact
              WHERE contact.employeeID = :employeeID
              ORDER BY contactID';
    $statement = $db->prepare($query);
    $statement->bindValue(':employeeID', $employeeID);
    $statement->execute();
    $contact = $statement->fetchAll();
    $statement->closeCursor();
    return $contact;
}
//delete a contact after responding
function delete_contact($contactID) {
    global $db;
    $query = 'DELETE FROM contact
              WHERE contactID = :contactID';
    $statement = $db->prepare($query);
    $statement->bindValue(':contactID', $contactID);
    $statement->execute();
    $statement->closeCursor();
}
?>