public class Customer {
    private String name;
    private String dob;
    private String address;
    private String src;

    public Customer() {
    }

    public Customer(String name, String dob, String address, String src) {
        this.name = name;
        this.dob = dob;
        this.address = address;
        this.src = src;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }
}
