using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class CameraMove : MonoBehaviour
{


    // Start is called before the first frame update
    void Start()
    {
        Cursor.lockState = CursorLockMode.Locked;
    }

    // Update is called once per frame
    void Update()
    {
        transform.RotateAround(transform.position, Vector3.up, Input.GetAxis("Mouse X") * 4);
        transform.RotateAround(transform.position, transform.right, -Input.GetAxis("Mouse Y") * 4);

        transform.position += transform.forward.normalized * Input.GetAxis("Vertical") /10;
        transform.position += transform.right.normalized * Input.GetAxis("Horizontal") / 10;
    }
}
