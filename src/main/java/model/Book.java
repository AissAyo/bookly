package model;

public class Book {
    private int id; // For storing the unique identifier from the database
    private String title;
    private String description;
    private String publicationYear;
    private String author;

    // Constructor (including id for existing records)
    public Book(int id, String title, String description, String publicationYear,String author) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.publicationYear = publicationYear;
        this.author=author;
    }

    // Constructor without id for creating new books (id will be auto-generated)
    public Book(String title, String description, String publicationYear,String author) {
        this.title = title;
        this.description = description;
        this.publicationYear = publicationYear;
        this.author=author;

    }
    public Book(){

    }

    // Getters and Setters
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

    public String getPublicationYear() {
        return publicationYear;
    }

    public void setPublicationYear(String publicationYear) {
        this.publicationYear = publicationYear;
    }

    public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	// Optionally, you can add a toString() method for easier debugging or logging.
    @Override
    public String toString() {
        return "Book [id=" + id + ", title=" + title + ", description=" + description + ", publicationYear=" + publicationYear + "]";
    }
}
